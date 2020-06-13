class HoldColorsController < ApplicationController
	def create
		@gym = Gym.find(params[:gym_id])
		@holdColor = @gym.hold_colors.create(hold_color_params)
		redirect_to edit_gym_path(@gym)
	end

	private
		def hold_color_params
			params.require(:hold_color).permit(:colorName, :color)
		end
end
