Rails.application.routes.draw do
  resources :reports
  resources :certificates
  resources :donors
  resources :profiles
   resources :users
  resources :children
  resources :events
  get 'home/index'
  root 'home#index'
  get 'dashboard/index'
  get 'home/change_password'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  resources :conversations, only: [:create] do
    member do
      post :close
    end
      resources :messages, only: [:create]
  end
  resources :chats
end
