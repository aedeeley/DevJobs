require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
  root to: 'jobs#index'
  
  root to: "main#index"

  resources :search, only: [:index]
end
