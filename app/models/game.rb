class Game < ActiveRecord::Base
	has_many(:squares)
	has_many(:users, :through => :turns)
end
