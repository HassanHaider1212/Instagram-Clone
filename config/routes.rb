Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #dashboard
  get "/dashboard" => "accounts#index"
  get "/profile/:username" => "accounts#profile", as: :profile

  resources :posts, only: [:new,:create,:show]

  #         controller name#method
  root to: "public#homepage"



end
