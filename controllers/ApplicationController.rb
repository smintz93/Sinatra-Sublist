class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

	require './config/environments'
	register Sinatra::CrossOrigin

	use Rack::MethodOverride  
	set :method_override, true


	# ActiveRecord::Base.establish_connection(
 # 		:adapter => 'postgresql', 
 # 		:database => 'sublist'
	# )

	use Rack::Session::Cookie, :key => 'rac.session',
							   :path => '/',
							   :secret => 'your_secret'


	get '/' do
		{
			success: true,
			message: "Please consult the API documentation for SUBLIST"
		}.to_json
	end

	get '*' do 
		{
			success: false,
			message: "404 page not found"
		}.to_json	
	
	end	


	configure do
    	enable :cross_origin
  	end


    set :allow_methods, [:get, :post,:delete, :put, :options]


  	options '*' do
	    p "opi"
	    response.headers['Allow'] = 'HEAD, GET, POST, PUT, PATCH, DELETE'
	    response.headers['Access-Control-Allow-Origin'] = '*'
	    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
  	end

end

