Rails.application.routes.draw do
  namespace :admin do
    resources :ngos
  end
  resources :reports, only: [:index, :show]
  resources :certificates
  resources :donors
  resources :profiles
   # resources :users
  resources :children
  resources :events
  get 'home/index'
  get 'dashboard/index'
  root 'dashboard#index'
  
  get 'home/change_password'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :conversations, only: [:create] do
    member do
      post :close
    end
      resources :messages, only: [:create]
  end
  resources :chats
  namespace :admin do
    get 'dashboard/index'
    root 'dashboard#index'
    resources :reports
  end
end
