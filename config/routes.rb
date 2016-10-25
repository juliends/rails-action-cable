Rails.application.routes.draw do
  devise_for :users
  root to: 'chatrooms#index'

  resources :chatrooms, only: [:index, :create, :show] do 
    resources :message, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
