class GamesController < ApplicationController
	def index
		@game = Game.all
		render "index"
	end
	def join_game
		render "join_game"
	end
	def create_game

	end
end
