class User < ActiveRecord::Base
	has_many(:games, :through => :turns)
end
