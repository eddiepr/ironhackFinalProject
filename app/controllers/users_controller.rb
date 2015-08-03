class UsersController < ApplicationController
	def update_active
		current_user.update_attribute(:active, false)
		render :nothing => true
	end
end
