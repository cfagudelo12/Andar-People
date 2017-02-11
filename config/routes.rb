Rails.application.routes.draw do
  resources :departments
  resources :roles
  resources :jobs
  resources :users
  resources :observations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
