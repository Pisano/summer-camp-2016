Rails.application.routes.draw do
  namespace :users do
    resources :registrations, only: [:create]
    resources :sessions, only: [:create, :destroy]
  end

  namespace :users do
    get 'sessions/destroy'
  end

  namespace :users do
    get 'registrations/create'
  end

  resources :posts

 end
