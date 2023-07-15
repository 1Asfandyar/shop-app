# frozen_string_literal: true

# Routes
Rails.application.routes.draw do
  resources :product_inquiries
  get 'categories/show'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  resources :categories, except: :index
  get '/products/:id', to: 'products#show', as: 'products'
  get 'category/:category_id/products/', to: 'products#index', as: 'category_products'
  post '/add_to_cart/:id', to: 'cart#create_cookie', as: 'cart_items'
  get '/cart_items', to: 'cart#cart_items', as: 'cart'
  delete '/cart_items/:id', to: 'cart#remove_item' , as: 'remove_item'
  # resources :products, only: :show
end
