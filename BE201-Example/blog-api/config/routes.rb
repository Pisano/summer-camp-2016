Rails.application.routes.draw do
  namespace :users do
    resources :registrations, only: [:create]
    resources :sessions, only: [:create]
    delete 'sessions' => 'sessions#destroy' # dont' pass id, delete current_user's session
  end

  resources :comments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
