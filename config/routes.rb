require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
  root to: 'jobs#index'
  
  get :search, controller: :jobs
  root to: "main#index"
end
