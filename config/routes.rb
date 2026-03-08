Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  authenticate do
    namespace :users, path: :my do
      resources :bounties do
    resources :applications, only: [:create, :show, :update]
  end
    end
  end

  resources :bounties

  get "/how-it-works", to: "static#how_it_works"

  # Defines the root path route ("/")
  root "bounties#index"
end
