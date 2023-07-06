# frozen_string_literal: true

# Routes
Rails.application.routes.draw do
  get 'categories/show'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # root 'home#index'
  # root 'products#index'

  root 'products#show'

  resources :categories, except: :index
end
