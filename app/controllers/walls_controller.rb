class WallsController < ApplicationController
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
		def wall_params
			params.require(:wall).permit(:name, :wall_type)
		end
end