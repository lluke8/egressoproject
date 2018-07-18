Rails.application.routes.draw do
  resources :testimonies
  devise_for :users
  resources :contacts
  resources :endings
  resources :students
  get 'home/index'
  root 'home#index'
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
