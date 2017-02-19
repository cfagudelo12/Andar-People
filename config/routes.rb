Rails.application.routes.draw do
  resources :departments
  resources :roles
  resources :jobs
  resources :users do
    member do
      get 'download_volunteering_agreement'
    end
  end
  resources :observations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
