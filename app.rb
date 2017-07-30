require "sinatra"

get '/' do #when we go to the root, we are going to go to the erb:index
	erb :index
end