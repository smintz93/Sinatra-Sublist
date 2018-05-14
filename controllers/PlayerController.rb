class PlayerController < ApplicationController 



	get "/" do 

		{  
			success: true,
			message: "You are hitting Player Controller "
		}.to_json	

	end	





end	