Rails.application.routes.draw do
  post "/login", to: "user_token#create"
  get "/status", to: "status#index"
  get "/status/user", to: "status#user"
  post "/sign-up", to: "users#create"
  resources :incidents
  resources :daily_reports
  resources :daily_tracks
  resources :vehicles
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
