Rails.application.routes.draw do
  get 'carts/show'
  get 'cart_items/index'
  get 'top/index'
  get 'products/index'
  get 'products/new', to: 'products#new'
  post 'products', to: 'products#create'
  delete 'products/:id', to: 'products#destroy'
  root 'top#main'
  get 'top/main'
  resources :cart_items
  get 'cart_items/new/:id', to: 'cart_items#new#:id'
  get 'cart_items/create/:id', to: 'cart_items#create#:id'
  get 'cart_items/destroy/:id', to: 'cart_items#destroy#:id'
  resources :carts
  get 'cart_items/show/:id', to: 'cart_items#show#:id'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
