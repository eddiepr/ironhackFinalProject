class PhrasesController < ApplicationController
	def create
		words = params[:words]
		Phrase.create(:user_id => current_user.id, :words => words)
		render json: {
			:user_id => current_user,
			:words => words 
		}  #putting finishing this chat off until later
	end
end
