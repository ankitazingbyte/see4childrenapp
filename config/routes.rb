Rails.application.routes.draw do
  get 'home/index'
  get 'dashboard/index'
  get 'home/change_password'
  root 'dashboard#index'
   # resources :users
  resources :profiles
  resources :children
  resources :events
  resources :reports, only: [:index, :show]
  resources :certificates
  resources :donors
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :conversations, only: [:create] do
    member do
      post :close
    end
      resources :messages, only: [:create]
  end
  resources :chats
  resources :notifications
  # ADMIN ROUTES
  namespace :admin do
    get 'dashboard/index'
    root 'dashboard#index'
    resources :ngos
    resources :reports
  end
  # API ROUTES
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :sessions, only: :create
      resources :registrations, only: :create
      resources :ngos
      resources :children
      resources :events
      resources :reports
      devise_for :users
      post 'password/forgot', to: 'password#forgot'
      post 'password/reset', to: 'password#reset' 
      put 'password/update', to: 'password#update'
      resources :users, only: [:create, :update] do
          collection do
              post 'email_update'
          end
      end
    end 
  end
end
