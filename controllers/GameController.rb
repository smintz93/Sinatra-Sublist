class GameController < ApplicationController 


	# Json Body Filter 

	before do 
		payload_body = request.body.read
		if(payload_body != "")
			@payload = JSON.parse(payload_body).symbolize_keys

			puts "-----------------------  HERE IS Payload"
			pp @payload
			puts "----------------------- HERE IS Payload"
		end
	end	


	get "/" do 
		games = Game.all 

		{  
			success: true,
			message: "You are hitting Game Controller",
			all_games: games
		}.to_json	

	end	





end	