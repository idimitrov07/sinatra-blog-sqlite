require 'sinatra'
require 'haml'
require './models/blog.rb'

#enable sessions for sinatra
configure do 
	enable :sessions
	set :session_secret, "thisismysecret"
end

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
	unless logged_in?
		redirect '/'
	end
	haml :blogform
end

post '/post' do
	unless logged_in?
		redirect '/'
	end
	new_post_id = db.new_post(params[:title], params[:body])
	redirect "/post/#{new_post_id}"
end


#check if user is logged in
def logged_in?
	@logged = session[:loggedin]
end









