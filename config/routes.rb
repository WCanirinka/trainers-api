# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static#home'
  get 'login', to: 'user#check'
  resources :users
  resources :gym_instructors
  resources :gym_classes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
