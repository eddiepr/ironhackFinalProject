class User < ActiveRecord::Base
	has_many(:turns)
	has_many(:games, :through => :turns)
end
