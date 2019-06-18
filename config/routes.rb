Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'shopping_cart', to: 'shopping_carts#index'
  get 'shopping_cart/checkout', to: 'shopping_carts#checkout'
  delete 'shopping_cart/remove/:product_id', to: 'shopping_carts#destroy'
  get 'shopping_cart/add/:product_id/:amount', to: 'shopping_carts#add_product', defaults: { amount: 1 }
  post 'shopping_cart/add', to: 'shopping_carts#add_product'
  get 'checkout', to: 'shopping_carts#checkout'
  resources :products
  resources :order, only[:update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
