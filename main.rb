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

get '/post' do 
	haml :blogform
end

post '/post' do
	new_post_id = db.new_post(params[:title], params[:body])
	redirect "/post/#{new_post_id}"
end









