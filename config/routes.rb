Rails.application.routes.draw do
  resources :materials
scope :api do
  resources :periods
  resources :favourites
  resources :buildings
  resources :materials
  resources :users

  post "/register", to: "authentications#register"
  post "/login", to: "authentications#login"

end
end
