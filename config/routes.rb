Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'application_tracking_system/home'
  get 'application_tracking_system/help'

  resources :application_tracking_system

  resources :jobs
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application_tracking_system#home'
end
