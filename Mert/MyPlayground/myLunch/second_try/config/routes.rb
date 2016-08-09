Rails.application.routes.draw do
  namespace :users do
    get 'sessions/create'
  end

  namespace :users do
    get 'sessions/destroy'
  end

  namespace :users do
    get 'registrations/create'
  end

  resources :comments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :users do
    resources :registrations, only: [:create]
    resources :sessions, only: [:create]
    delete '/sessions' => 'users::sessions#destroy'
  end
  # [...]
end
