class SquaresController < ApplicationController

	def get_layout
		gm = Game.find_by(id: 1)
		spaces = gm.squares.all
		# do something in regards to getting the squares for whichever game last had a move made on it aka whichever
		# game last did an ajax post
		# game = Game.first
		# add another condition here to get the first game that was created that is not currently in use by a user
		# and also is not the game that the user last made a move on
		render json: spaces
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
