Rails.application.routes.draw do
  resources :periods
  resources :favourites
  resources :buildings
scope :api do
  resources :users
  
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
end
