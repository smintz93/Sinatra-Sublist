class Player < ActiveRecord::Base
	
 belongs_to :teams, through: :enrollment



end
