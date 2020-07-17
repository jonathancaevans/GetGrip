class RoutesettersController < ApplicationController
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
	    def setter_params
	      params.require(:routesetter).permit(:user_id, :gym_id)
	    end
end