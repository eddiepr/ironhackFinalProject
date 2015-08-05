class PhrasesController < ApplicationController
	def create
		words = params[:words]
		puts "sdjhgjdgjfdgjfdhgjkfdngjdfgjfndjgnfdjkgnfdjkngjkdfngjkdfngjkfdj"
		puts words
		puts "jdhfjdshfjkdhgjkdfgjfdjghdfkjhgdfjhgkjfdhgjfdhgjhdfjghfdjhgd"
		Phrase.create(:user_id => current_user.id, :words => words)
		all_words_array = []
		all_words = Phrase.all.each do |wrds|
			all_words_array.push(wrds.words)
		end
		puts all_words
		render json: {
			:user_id => current_user,
			:words => all_words_array 
		}  #putting finishing this chat off until later
	end
end
