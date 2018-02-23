Rails.application.routes.draw do
  resources :children
  resources :events
  get 'home/index'

  get 'dashboard/index'
  root 'home#index'
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
  get 'home/profile'
  get 'home/edit_profile'
end
