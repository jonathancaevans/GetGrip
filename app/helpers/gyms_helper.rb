module GymsHelper
	def get_grade_breakdown(gym, system)
		data = Hash.new

	    system.grades.order(:difficulty).each do |grade|
	    	gym.hold_colors.each do |color|
	    		if gym.routes.where("is_set = 1 or is_set = 2").where({ hold_color: color.id, grade_id: grade.id}).count > 0
	    			breakdown = Array.new
		    		breakdown << color.colorName
		    		breakdown << grade.difficulty

		    		data[breakdown] = gym.routes.where({ hold_color: color.id, grade_id: grade.id}).count
		    	end
	    	end
	    end

	    data
	end
end
