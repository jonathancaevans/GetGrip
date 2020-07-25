class RoutesettersController < ApplicationController
	before_action :setter_perms

	def create
		@setter = Routesetter.new(setter_params)
		@setter.gym_id = params[:gym_id]
		@setter.save
	end

	def destroy
		@setter = Routesetter.find(params[:id])
		@setter.destroy
	end

	private
		def setter_perms
			if params[:gym_id] == nil
				@setter = Routesetter.find(params[:id])
				@gym = Gym.find(@setter.gym_id)
			else
				@gym = Gym.find(params[:gym_id])
			end
			
			if !helpers.is_setter(@gym)
				redirect_to unauthorized_notallowed_path and return
			end
		end

	    def setter_params
	      params.require(:routesetter).permit(:user_id, :gym_id)
	    end
end