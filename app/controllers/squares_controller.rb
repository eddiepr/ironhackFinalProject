class SquaresController < ApplicationController

	def get_layout
		puts ("1")
		# gm = Game.first#find_by(id: 2)
		gm = Game.where(finished: false)
		puts ("2")
		gm = gm.where(active: false)
		puts ("3")
		gm = gm.order(created_at: :asc)
		puts ("4")
		gm = gm.limit(1)
		puts "5"
		gm = gm[0]
		puts "6"
		puts gm
		puts "7"
		#gm = Game.where(id is the lowest, finished == false, active == false)
		gmId = gm.id
		spaces = gm.squares.all
		puts spaces
		puts "8"
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
