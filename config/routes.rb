Rails.application.routes.draw do
  devise_for :users
  get 'companies/index'

  namespace :charts do
    get "colors"
    get "grades"
  end

  resources :companies, shallow: true do
  	resources :gyms do
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
  end

  get "unauthorized/notallowed"

  root 'companies#index'
end