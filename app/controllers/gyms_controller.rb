class GymsController < ApplicationController
	before_action :gym_perms, except: [:show]

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
		def gym_perms
			@gym = Gym.find(params[:id])
			
			if !helpers.is_setter(@gym)
				redirect_to root_path and return
			end
		end

		def gym_params
			params.require(:gym).permit(:name, routes_attributes: [:id, :hold_color])
		end
end