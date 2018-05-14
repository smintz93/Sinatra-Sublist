class Team < ActiveRecord::Base
	
 
 has_many :games

 has_many :players, through: :availability



end
