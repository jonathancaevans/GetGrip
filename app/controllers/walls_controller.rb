class WallsController < ApplicationController
	before_action :wall_perms, except: [:show]

    def create
    	@gym = Gym.find(params[:gym_id])
		@wall = @gym.walls.create(wall_params)
		redirect_to edit_gym_path(@gym)
    end

    def edit
		@wall = Wall.find(params[:id])
	end

	def update
		@wall = Wall.find(params[:id])
		@wall.update(wall_params);

		@gym =  Gym.find(@wall.gym_id)
		redirect_to edit_gym_path(@gym)
	end

	private
		def wall_perms
			if params[:gym_id] == nil
				@gym = Gym.find(Wall.find(params[:id]).gym_id)
			else
				@gym = Gym.find(params[:gym_id])
			end
			

			if !helpers.is_setter(@gym)
				redirect_to root_path and return
			end
		end

		def wall_params
			params.require(:wall).permit(:name, :wall_type)
		end
end