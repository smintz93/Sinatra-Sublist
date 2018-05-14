class AvailabilityController < ApplicationController 


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
		{  
			success: true,
			message: "You are hitting available Controller"
		}.to_json

	end 

	get "/players" do
		players = Player.all
		# available_players = players.available

		{  
			success: true,
			message: "You are hitting available Controller",
			players: players
		}.to_json

	end 
	get "/games" do
		games = Game.all
		

		{  
			success: true,
			message: "You are hitting available Controller",
			games: games
		}.to_json

	end 



end	