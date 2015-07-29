class GamesController < ApplicationController
	def index
		@game = Game.all
		render "index"

		@firstgame = Game.first
	end
	def join_game
		render "join_game"
	end

	def get_board
		render "join_game"
	end

	def create_game
		# I dont't remember what this method was supposed to be for
	end

	def get_games_data
		# trying to get game with highest move_number attribute to be passed to the ajax get request
		# move_numbers_array = []
		# Game.all.each do | gm |
		# 	gm.move_number
		# 	move_numbers_array.push(gm)
		# end
		# move_numbers_array.order(asc)
		# num = move_numbers_array(0)
		# game_data = Game.find_by(:move_number => num)

		# render json: game_data
	end

	def update



		# @prj = Project.find(params[:project_id])
		# @entr = @prj.entries.find(params[:id]) 
		# 	@entr.update_attributes(entry_params)
		# if @entr.save
		# 	redirect_to(project_entries_path)
		# else
		# 	@errors = @entr.errors.full_messages
		# 	render ("edit")
		# end
	end
end
