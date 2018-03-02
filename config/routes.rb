Rails.application.routes.draw do
  resources :applications
  devise_for :users, :path => 'u', :controllers => { registrations: 'registrations' }
  resources :users, :only => [:index, :new, :create, :destroy]
  get 'application_tracking_system/home'
  get 'application_tracking_system/help'
  get 'application_tracking_system/menu'
  # match '/users', to: 'users#index', via: 'get'
  get '/users', to: 'users#new'
  match '/users/new', to: 'users#new', via: 'get'
  match '/users', to: 'users#create', via: 'post'
  # match '/users/:id', to: 'users#remove', via: 'delete'
  resources :application_tracking_system
  resources :jobs
  resources :companies
  resources :searches, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application_tracking_system#home'
end
