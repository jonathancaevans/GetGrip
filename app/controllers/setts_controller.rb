class SettsController < ApplicationController
	before_action :set_sett, only: [:show, :edit, :update, :destroy]

	def new
		@gym = Gym.find(params[:gym_id])
		@sett = @gym.setts.create(params[:sett])
		@sett.routes.build
	end

	def create
		@sett = Sett.new(sett_params)
		@sett.save
	end

	def update
		@sett.update(sett_params)

		@sett.routes.each do |route|
			route.update(gym_id: @sett.gym_id)
			puts route.gym_id
		end

		@gym = Gym.find(@sett.gym_id)
		redirect_to gym_path(@gym)
	end

	private
		def set_sett
			@sett = Sett.find(params[:id])
		end

	    def sett_params
	      # params.require(:todo_list).permit(:name, tasks_attributes: [:id, :_destroy, :todo_list_id, :name, :completed, :due])
	      params.require(:sett).permit(routes_attributes: [:hold_color, :wall_id, :grade_id, :sett_id])
	    end
end
 