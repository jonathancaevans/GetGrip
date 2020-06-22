class SystemsController < ApplicationController
	before_action :set_system, only: [:show, :edit, :update, :destroy]
	
	def new
    	@gym = Gym.find(params[:gym_id])
		@system = @gym.systems.create(params[:system])
		@system.grades.build
	end

 	def create
	    @system = system.new(grading_system_params)
		@system.save

		redirect_to edit_gym_path(@gym), notice: 'Todo list was successfully created.'
 	end

	def update
		@system.update(system_params)
		@gym = Gym.find(@system.gym_id)
		redirect_to edit_gym_path(@gym), notice: 'Todo list was successfully created.'
	end

	def edit
    # 3.times do
    # @todo_list.tasks.build
    # end
	end

	def destroy
		@gym = Gym.find(@system.gym_id)
		@system.destroy
		redirect_to edit_gym_path(@gym.id), notice: 'Todo list was successfully destroyed.'
	end

	private
		def set_system
			@system = System.find(params[:id])
		end

		def system_params
		  params.require(:system).permit(:name, grades_attributes: [:id, :difficulty, :_destroy, :label])
		end
end
