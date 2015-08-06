class GamesController < ApplicationController
	attr_accessor :gameo
	def index
		@game = Game.all
		render "index"
	end
	def join_game
		@gameo = Game.get_random_game(current_user)
		#gm = Game.where(id is the lowest, finished == false, active == false)
		@gmId = @gameo.id # this can screw up and not be the same game as is getting called in the ajax if 
							#2 users make moves at close enough to teh same time
							#but reloading page and using ajax back to back is making me have 2 methods
							#called back to back that should reference the same game id. because I can't
							#do render json and render "join_game" in the same method
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
			
		# game = Game.find(params[:id])
		data = params[:updateGamesData]
		puts data
		gameId = data[:id]
		@gameo = Game.find_by(id: gameId)
		@gameo.update_attribute(:finished, params[:updateGamesData][:finishedStatus])
		@gameo.update_attribute(:active, false)
		game_turn = @gameo.turn


		Turn.create(:user_id => current_user.id, :game_id => @gameo.id, :color => @gameo.turn)
		
		if (game_turn == "white")
			@gameo.update_attribute(:turn, "black")
		else
			@gameo.update_attribute(:turn, "white")
		end


		# add something for on save failure I guess here
		squares = @gameo.squares.all
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
