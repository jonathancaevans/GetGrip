class SettsController < ApplicationController
	before_action :sett_perms

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
		@sett = Sett.find(params[:id])
		@sett.update(sett_params)

		@sett.routes.each do |route|
			route.update(gym_id: @sett.gym_id)
			puts route.gym_id
		end

		@gym = Gym.find(@sett.gym_id)
		redirect_to gym_path(@gym)
	end

	private
		def sett_perms
			if params[:gym_id] == nil
				@gym = Gym.find(Sett.find(params[:id]).gym_id)
			else
				@gym = Gym.find(params[:gym_id])
			end
			
			if !helpers.is_setter(@gym)
				redirect_to root_path and return
			end
		end

	    def sett_params
	      # params.require(:todo_list).permit(:name, tasks_attributes: [:id, :_destroy, :todo_list_id, :name, :completed, :due])
	      params.require(:sett).permit(routes_attributes: [:hold_color, :wall_id, :grade_id, :sett_id, :is_set, setters: []])
	    end
end
 