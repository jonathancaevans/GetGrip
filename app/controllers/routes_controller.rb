class RoutesController < ApplicationController
	before_action :route_perms, except: [:show]

	def show
		@route = Route.find(params[:id])
	end

	def strip
	  @route = Route.find(params[:route_id])
	  if @route.is_set == 1
	  	@route.update(is_set: 2)
	  else
	  	@route.update(is_set: 3)
	  end
	end

	def set
		@route = Route.find(params[:route_id])
		@route.update(is_set: 1)
	end

	def unmark

	end

	private
		def route_perms
			if params[:gym_id] == nil
				@gym = Gym.find(Route.find(params[:route_id]).gym_id)
			else
				@gym = Gym.find(params[:gym_id])
			end
			

			if !helpers.is_setter(@gym)
				redirect_to root_path and return
			end
		end
end
