class GradesController < ApplicationController
	def index
	end

	def create
		@gym = Gym.find(params[:gym_id])
		@grade = @gym.grades.create(grade_params)
	end

	private
		def grade_params
			params.permit(:label)
		end
end
