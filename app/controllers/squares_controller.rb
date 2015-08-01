class SquaresController < ApplicationController

	def get_layout
		# gm = Game.first#find_by(id: 2)
		gm = Game.where(finished: false)
			.where(active: false)
			.order(created_at: :asc)
			.limit(1)
			puts "djhgkfdjgf"
			p gm
			puts "jsdkfjdkfg"
		gm = gm[0]
		#gm = Game.where(id is the lowest, finished == false, active == false)
		gmId = gm.id
		spaces = gm.squares.all
		# gm.update_attribute(:active, true)
		
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
