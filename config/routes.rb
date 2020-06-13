Rails.application.routes.draw do
  get 'companies/index'
  
  resources :companies, shallow: true do
  	resources :gyms do
  		resources :walls
      resources :hold_colors
      resources :systems
  		resources :setts do
  			resources :routes
  		end
  	end
  end

  root 'companies#index'
end