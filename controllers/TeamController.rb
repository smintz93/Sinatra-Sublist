class TeamController < ApplicationController 

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
		teams = Team.all
		{  
			success: true,
			message: "You are hitting Team Controller ",
			teams: teams
		}.to_json	

	end	
	# display all the games for this team
	get "/:id" do 
		team = Team.find params[:id]
		binding.pry
		this_team_games = team.games
		{  
			success: true,
			message: "You are hitting Team Controller",
			games: this_team_games
		}.to_json	
	end

	get "/players" do 

		players = Players.all params[:id]
		players = players.games
		{  
			success: true,
			message: "You are hitting Team Controller",
			players: players
		}.to_json	
	end

		



end	