class User < ActiveRecord::Base
	has_many(:turns)
	has_many(:games, :through => :turns)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
