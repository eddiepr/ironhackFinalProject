class Game < ActiveRecord::Base
	has_many(:squares)
	has_many(:turns)
	has_many(:users, :through => :turns)
end
