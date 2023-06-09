# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :property_enquiries, except: %i[edit destroy] do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'property_enquiries#index'
end
