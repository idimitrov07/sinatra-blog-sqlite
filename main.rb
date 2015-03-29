require 'sinatra'
require 'haml'
require './models/blog.rb'

db = Blog.new()

get '/' do 
	@posts = db.posts()
	haml :index
end

get '/post/:id' do
	@post = db.post(params[:id])
	haml :blogpost
end










