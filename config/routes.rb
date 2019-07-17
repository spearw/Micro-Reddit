Rails.application.routes.draw do

  get 'sessions/new'
  get 'users/new'
  get 'homepage/index'

  get  '/signup',  to: 'users#new'
  post '/signup', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :posts do
   resources :comments
  end
  resources :account_activations, only: [:edit]

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
