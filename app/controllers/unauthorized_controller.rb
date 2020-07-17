class UnauthorizedController < ApplicationController
	def notallowed
		render 'unauthorized'
	end
end
