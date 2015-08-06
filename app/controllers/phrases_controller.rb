class PhrasesController < ApplicationController
	def array_and_json
		all_words_array = []
		all_words = Phrase.all.each do |wrds|
			id = wrds.user_id
			this_user = User.find_by(id: id)
			this_email = this_user.email
			email_array = this_email.split("@")
			email_prefix = email_array[0]
			all_words_array.push(email_prefix + ":" + " " + wrds.words)
		end
		puts "all words array is below"
		puts all_words_array
		# test_array = [1,2,3,4,5,6,7,8]
		# puts test_array
		render json: {
			:words => all_words_array
		}  
	end
	def create
		words = params[:words]
		Phrase.create(:user_id => current_user.id, :words => words)
		self.array_and_json
	end

	def update_display
		self.array_and_json
	end
end
