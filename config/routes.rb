Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users

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

  root 'welcome#index'
end