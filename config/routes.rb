Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  authenticate do
    namespace :users, path: :my do
      resources :bounties
    end
  end

  resources :bounties

  get "/how-it-works", to: "static#how_it_works"

  get 'filters', to: 'bounties#filters'
  get 'open_filter', to: 'bounties#open_filter'
  get 'assigned_filter', to: 'bounties#assigned_filter'
  get 'completed_filter', to: 'bounties#completed_filter'

  # Defines the root path route ("/")
  root "bounties#index"
end
