require 'sinatra'

get '/' do 
	"Hello Sinatra! <a href='/another'>click</a>"
end

get '/another' do 
	"<a href='/'>Go Back</a>" +
	"Hello again"
end

get '/name/:name' do
	"Your name is #{params[:name]}"
end








