require 'sinatra'
require 'haml'

get '/' do 
	haml :index
end

get '/another' do 
	haml :another
end

get '/name/:name' do
	@name2 = params[:name]
	haml :name
end








