class SystemsController < ApplicationController
	before_action :system_perms, except: [:show]
	
	def new
    	@gym = Gym.find(params[:gym_id])
		@system = @gym.systems.create(params[:system])
		@system.grades.build
	end

 	def create
	    @system = system.new(grading_system_params)
		@system.save

		redirect_to edit_gym_path(@gym)
 	end

	def update
		@system = System.find(params[:id])
		@system.update(system_params)
		
		@gym = Gym.find(@system.gym_id)
		redirect_to edit_gym_path(@gym)
	end

	def edit
	    @system = System.find(params[:id])
	end

	def destroy
		@system = System.find(params[:id])
		@system.destroy
		redirect_to edit_gym_path(@gym.id)
	end

	private
		def system_perms
			if params[:gym_id] == nil
				@gym = Gym.find(System.find(params[:id]).gym_id)
			else
				@gym = Gym.find(params[:gym_id])
			end
			

			if !helpers.is_setter(@gym)
				redirect_to root_path and return
			end
		end

		def system_params
		  params.require(:system).permit(:name, grades_attributes: [:id, :difficulty, :_destroy, :label])
		end
end
