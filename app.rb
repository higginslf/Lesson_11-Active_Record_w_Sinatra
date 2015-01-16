require 'sinatra'
require 'sinatra/activerecord'
require 'pry'

set :database, {adapter: "sqlite3", database: "sample_app.sqlite3"}

require './models'


get '/' do
	@user = User.find(3)

	erb :home
end

