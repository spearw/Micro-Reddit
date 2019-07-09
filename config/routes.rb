Rails.application.routes.draw do
  get 'users/new'
  get 'homepage/index'

  resources :posts do
   resources :comments
 end

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
