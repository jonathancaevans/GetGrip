Rails.application.routes.draw do
  get 'home/welcome'
  get 'home/profile'
  devise_for :users

  namespace :charts do
    get "colors"
    get "grades"
  end

  resources :companies

  resources :gyms, shallow: true do
      resources :routesetters
      resources :walls
      resources :hold_colors
      resources :systems
      resources :setts do
        resources :routes do
          resources :ratings
          post :strip
          post :set
        end
      end
    end

  get "unauthorized/notallowed"

  authenticated :user do
    root 'home#profile', as: :authenticated_root
  end
  root 'home#welcome'
end