class ChartsController < ApplicationController
	#No perms required no exploitative utility

	def colors
		@gym = Gym.find(params[:format])
		colorList = Array.new

    	@gym.routes.where("is_set = 1 or is_set = 2").group(:hold_color).count.each {|key, value|
    		dataHash = Hash.new
    		valueHash = Hash.new
    		valueHash["Occurrence"] = value

    		dataHash["data"] = valueHash;
    		dataHash["name"] = @gym.hold_colors.find(key).colorName
    		dataHash["color"] = @gym.hold_colors.find(key).color
    		colorList << dataHash
    	}

    	puts colorList

    	render json: colorList
  	end

  	def grades
  		@gym = Gym.find(params[:format])
  		render json: @gym.routes.where("is_set = 1 or is_set = 2").joins(:grade).merge(Grade.order(difficulty: :asc)).group(:difficulty).count.transform_keys { |key| key = Grade.find_by(id: key).label unless !Grade.find_by(id: key)}
  	end
end