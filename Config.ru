require 'sinatra/base'

require 'sinatra/activerecord'


# Controllers 
require './controllers/ApplicationController'




# Routes

map('/') {
	run ApplicationController
}
