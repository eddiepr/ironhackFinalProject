class SquaresController < ApplicationController

	def get_layout


		data = params[:updateGamesData]
		puts data
		gameId = data[:id]
		game = Game.find_by(id: gameId)
		game.update_attribute(:finished, params[:updateGamesData][:finishedStatus])
		game.update_attribute(:active, false)


		# add something for on save failure I guess here
		squares = game.squares.all
		move = params[:moveToSquareAndContents]
		from = params[:clickedPieceSquare]
		fromSquare_array = squares.where("x = ? AND y = ?", from[:x], from[:y])
		square_array = squares.where("x = ? AND y = ?", move[:x], move[:y])
		from_square = fromSquare_array[0]
		square = square_array[0]
		puts "puts square is below"
		puts square
		puts "puts square is above"
		from_square.update_attribute(:contents, "nil")
		square.update_attribute(:contents, move[:contents])

		render json: { :message => "Update successful" }










		# gm = Game.first#find_by(id: 2)
		gm = Game
			.where(finished: false)
			.where(active: false)
			.order(created_at: :asc)
			.limit(1)
		gm = gm[0]
		#gm = Game.where(id is the lowest, finished == false, active == false)
		gmId = gm.id
		spaces = gm.squares.all
		gm.update_attribute(:active, true)
		# do something in regards to getting the squares for whichever game last had a move made on it aka whichever
		# game last did an ajax post
		# game = Game.first
		# add another condition here to get the first game that was created that is not currently in use by a user
		# and also is not the game that the user last made a move on
		render json: {
			:spaces => spaces, 
			:gmId => gmId
		}
	end

	def update

	end

	# def post_json
	# 	squares = Square.all #find_by(:id => params[:user_id])

	#     if squares.nil?
	#       info = { :error => "squares not found" }
	#       render(:status => 404, :json => info)
	#     else
	#       conts = squares.contents.all #find_by(:id => params[:id])

	#       if conts.nil?
	#         info = { :error => "conts not found" }
	#         render(:status => 404, :json => info)
	#       else
	#         conts.save
	#       end
	#     end
	# end
end
