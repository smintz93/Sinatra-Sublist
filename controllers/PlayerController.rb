class PlayerController < ApplicationController 

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
		players = Player.all

			{  
				success: true,
				message: "You are hitting Player Controller",
				all_players: players
			}.to_json	

	end	





end	