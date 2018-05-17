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
	get "/:id" do 
		players = Player.find params[:id]
		this_player_games = players.games

			{  
				success: true,
				message: "You are hitting Player Controller",
				games: this_player_games
			}.to_json	

	end

	post '/' do
		player = Player.new
		player.name = @payload[:name]
		player.username = @payload[:username]
		player.password = @payload[:password]
		player.pos = @payload[:pos]
		player.email = @payload[:email]
		player.phone= @payload[:phone]
		player.save



		{
			success: true,
			message: "thank you for registering"
			player: player
		}.to_json

	end
	get "/logout" do
		session.destroy
		{
			success: true,
			message: "you are now logged out, goodbye"
		}.to_json
	end









end	