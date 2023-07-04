# frozen_string_literal: true

# Routes
Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
<<<<<<< HEAD
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
=======
>>>>>>> 0ea61c649c2f8e0be57656959e923dd2fb5c27f6
  root 'home#index'

  resource :categories 
end
