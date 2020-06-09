# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static#home'
  get 'login', to: 'users#check'
  resources :users
  resources :gym_instructors
  resources :gym_classes
end
