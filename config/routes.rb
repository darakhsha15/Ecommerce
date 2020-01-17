Rails.application.routes.draw do
  get 'admin/home'
  resources :addresses
  resources :order_products
  resources :orders
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 devise_for :users
 root 'products#index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
