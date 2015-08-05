class Game < ActiveRecord::Base
	has_many(:squares)
	has_many(:turns)
	has_many(:users, :through => :turns)

	def self.get_random_game(user)
		# if user.number of turns is %3 == 0, then do 
		# 	game_number 3
		# else if user.number of turns is %2 == 0, then do 
		# 	game_number 2
		# else do
		# 	game_number 1
		# end
		if (user != nil)
			turn_count = Turn.where(:user_id => user.id).count
			if (turn_count %5 == 0)
				game_number = 4
			elsif (turn_count %4 == 0)
				game_number = 3
			elsif (turn_count %3 == 0) 
				game_number = 2
			elsif (turn_count %2 == 0)
				game_number = 1
			else
				game_number = 0
			end
		else
			game_number = 0
		end
		      #this whole conditional is temporary for cycling through different games
				# when there is only one user using the app
			

		gm = self.where(finished: false)
			.where(active: false)
			.order(created_at: :asc)
			# .limit(1)
			# puts "djhgkfdjgf"
			# p gm
			# puts "jsdkfjdkfg"
			return gm[game_number]
		# for i in 0..(gm.length - 1) 
		# 	return gm[i]
		# end
	end
end
