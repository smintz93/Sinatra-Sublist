class TeamController < ApplicationController 



	get "/" do 

		{  
			success: true,
			message: "You are hitting Team Controller "
		}.to_json	

	end	


end	