class HoldColorsController < ApplicationController
	before_action :hold_color_perms

	def create
		@gym = Gym.find(params[:gym_id])
		@holdColor = @gym.hold_colors.create(hold_color_params)
		redirect_to edit_gym_path(@gym)
	end

	def edit
		@color = HoldColor.find(params[:id])
	end

	def update
		@color = HoldColor.find(params[:id])

		@color.update(hold_color_params)
	end

	private
		def hold_color_perms
			if params[:gym_id] == nil
				@color = HoldColor.find(params[:id])
				@gym = Gym.find(@color.gym_id)
			else
				@gym = Gym.find(params[:gym_id])
			end
			
			if !helpers.is_setter(@gym)
				redirect_to unauthorized_notallowed_path and return
			end
		end

		def hold_color_params
			params.require(:hold_color).permit(:colorName, :color)
		end
end
