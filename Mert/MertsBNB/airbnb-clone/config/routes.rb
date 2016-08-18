Rails.application.routes.draw do
  resources :users
  resources :listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'users/login' => 'users#login'
  delete 'users/logout' => 'users#logout'

end
