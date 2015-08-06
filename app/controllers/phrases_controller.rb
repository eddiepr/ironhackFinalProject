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
		puts "all words array is below"
		puts all_words_array
		# test_array = [1,2,3,4,5,6,7,8]
		# puts test_array
		render json: {
			:user_id => current_user.id,
			:words => all_words_array,
			:email => current_user.email 
		}  
	end

	def update_display
		all_words_array = []
		all_words = Phrase.all.each do |wrds|
			all_words_array.push(wrds.words)
		end
		puts "all words array is below"
		puts all_words_array
		# test_array = [1,2,3,4,5,6,7,8]
		# puts test_array
		render json: {
			:user_id => current_user.id,
			:words => all_words_array,
			:email => current_user.email
		}
	end
end
