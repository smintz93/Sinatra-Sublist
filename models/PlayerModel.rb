class Player < ActiveRecord::Base

	has_many :games
 	has_many :teams, through: :availabilities



end
