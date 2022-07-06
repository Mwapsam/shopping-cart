Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  # resources :cart, only: [:show]
  resources :products
  root 'products#index'
end
