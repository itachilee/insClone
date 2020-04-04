Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #dashboard
  get "/dashboard" => "accounts#index"
  # profile
  get "profile/:username" => "accounts#profile",as: :profile

  # post
  resources :posts, only: [:create,:show,:new]
  root to: "public#homepage"
end
