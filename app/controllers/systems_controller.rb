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
 	end

	def update
		@system.update(system_params)
	end

	def edit
    # 3.times do
    # @todo_list.tasks.build
    # end
	end

	private
		def set_system
			@system = System.find(params[:id])
		end

		def system_params
		  params.require(:system).permit(:name, grades_attributes: [:id, :_destroy, :label])
		end
end
