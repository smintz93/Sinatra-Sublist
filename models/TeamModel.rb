class Team < ActiveRecord::Base
	
 
	 has_many :games

	 has_many :players, through: :availabilities



end
