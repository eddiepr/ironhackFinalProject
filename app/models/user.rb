class User < ActiveRecord::Base
	has_many(:turns)
	has_many(:games, :through => :turns)
	has_many(:phrases)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #    def self.active 
		# User.current_user.update_attribute(:active, true)
 	# end
end
