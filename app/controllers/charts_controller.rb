class ChartsController < ApplicationController
	def colors
		@gym = Gym.find(params[:format])
    	render json: @gym.routes.where("is_set = 1 or is_set = 2").group(:hold_color).count.transform_keys { |key| key = @gym.hold_colors.find(key).colorName}
  	end

  	def grades
  		@gym = Gym.find(params[:format])
  		render json: @gym.routes.where("is_set = 1 or is_set = 2").joins(:grade).merge(Grade.order(difficulty: :asc)).group(:grade_id).count.transform_keys { |key| key = Grade.find_by(id: key).label unless !Grade.find_by(id: key)}
  	end
end
