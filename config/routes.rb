Rails.application.routes.draw do
  devise_for :users
  get 'companies/index'
  
  resources :companies, shallow: true do
  	resources :gyms do
  		resources :walls
      resources :hold_colors
      resources :systems
  		resources :setts do
  			resources :routes do
          post :strip
          post :set
        end
  		end
  	end
  end

  root 'companies#index'
end