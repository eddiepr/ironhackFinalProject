class GamesController < ApplicationController
	def index
		@game = Game.all
		render "index"

		@firstgame = Game.first
	end
	def join_game
		render "join_game"
	end
	def create_game

	end
end
