class GymsController < ApplicationController
    def create
    	@company = Company.find(params[:company_id])
		@gym = @company.gyms.create(gym_params)
		redirect_to company_path(@company)
    end

    def edit
		@gym = Gym.find(params[:id])
	end

	def update
		@gym = Gym.find(params[:id])
		@gym.routes.create(gym_params);
	end

    def show
		@gym = Gym.find(params[:id])
	end

	private
		def gym_params
			params.require(:gym).permit(:name, routes_attributes: [:id, :hold_color])
		end
end