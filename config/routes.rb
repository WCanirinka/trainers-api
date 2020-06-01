Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  get 'gym_instructors/index'
  get 'gym_instructors/show'
  get 'gym_instructors/create'
  get 'gym_instructors/update'
  get 'gym_instructors/destroy'
  get 'gym_classes/index'
  get 'gym_classes/show'
  get 'gym_classes/create'
  get 'gym_classes/update'
  get 'gym_classes/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
