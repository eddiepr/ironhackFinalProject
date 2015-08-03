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
		render "join_game"  #render the page with updated board
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


		
		# game = Game.find(params[:id])
		data = params[:updateGamesData]
		puts data
		gameId = data[:id]
		@game = Game.find_by(id: gameId)
		game.update_attribute(:finished, params[:updateGamesData][:finishedStatus])
		game.update_attribute(:active, false)
		game_turn = game.turn
		if (game_turn == "white")
			game.update_attribute(:turn, "black")
		else
			game.update_attribute(:turn, "white")
		end


		# add something for on save failure I guess here
		squares = game.squares.all
		move = params[:moveToSquareAndContents]
		from = params[:clickedPieceSquare]
		fromSquare_array = squares.where("x = ? AND y = ?", from[:x], from[:y])
		square_array = squares.where("x = ? AND y = ?", move[:x], move[:y])
		from_square = fromSquare_array[0]
		square = square_array[0]
		from_square.update_attribute(:contents, "nil")
		square.update_attribute(:contents, move[:contents])

		render json: { :message => "Update successful" }

		# gm = Game.first
		# spaces = gm.squares.all 
		# gmId = gm.id
		# render json: {
		# 	:spaces => spaces, 
		# 	:gmId => gmId
		# }
		# render nothing: true
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
	def template
		render "startbootstrap-sb-admin-2/index.html"
	end
end
