class UsersController < ApplicationController
	def update_active
		current_user.update_attribute(:active, false)
		render :nothing => true
	end

	def update_points
		# updateGamesData = {
		# 	id: gameId,
		# 	finishedStatus: true
		# }
		# data = params[:updateGamesData]

		# gameId = data[:id]
		# @gameo = Game.find_by(id: gameId)
		# @gameo.update_attribute(:finished, true)
		# @gameo.update_attribute(:active, true)
		# game_turn = @gameo.turn
		# User.find_by(id: current_user.id)
		# turn = Turn.where("game_id = ? AND user_id = ? AND color = ?", @gameo, current_user.id, "black")   
		# turn_length = turn.length 

		# Turn.create(:user_id => current_user.id, :game_id => @gameo.id, :color => @gameo.turn)

		render :nothing => true #change this to render "join_game", and get rid
		#of the page reload in the js
	end
end
