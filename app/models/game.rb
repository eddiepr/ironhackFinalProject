class Game < ActiveRecord::Base
	has_many(:squares)
	has_many(:turns)
	has_many(:users, :through => :turns)

	def self.get_random_game
		gm = self.where(finished: false)
			.where(active: false)
			.order(created_at: :asc)
			.limit(1)
			# puts "djhgkfdjgf"
			# p gm
			# puts "jsdkfjdkfg"
		return gm[0]
	end
end
