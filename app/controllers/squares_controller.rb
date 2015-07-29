class SquaresController < ApplicationController

	def get_layout
		# do something in regards to getting the squares for whichever game last had a move made on it aka whichever
		# game last did an ajax post
		squares = Square.all #find_by(:id => params[:user_id])
		render json: squares
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
