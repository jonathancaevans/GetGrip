class RatingsController < ApplicationController
	before_action :rating_perms

	def create
		puts current_user.id
		@route = Route.find(params[:route_id])
		@rating = @route.ratings.create(rating_params)
		@rating.user_id = current_user.id
	end

	private
		def rating_perms
			
		end

		def rating_params
			params.require(:rating).permit(:rating)
		end
end
