require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
  root to: 'home#index'

  resources :search, only: [:index]
end
