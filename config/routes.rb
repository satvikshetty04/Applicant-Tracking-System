Rails.application.routes.draw do
  get 'application_tracking_system/home'

  get 'application_tracking_system/help'

  resources :jobs
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application_tracking_system#home'
end
