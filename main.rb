require 'sinatra'
require 'haml'

get '/' do 
	haml :index
end

get '/another' do 
	haml :another
end

get '/name/:name' do
	"Your name is #{params[:name]}"
end








