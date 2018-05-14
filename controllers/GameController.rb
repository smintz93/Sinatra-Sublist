class GameController < ApplicationController 



	get "/" do 

		{  
			success: true,
			message: "You are hitting Game Controller"
		}.to_json	

	end	





end	