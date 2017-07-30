require "sinatra"

get '/' do #when we go to the root, we are going to go to the erb:index
	redirect '/user_name'

end

get '/user_name'do
   erb :index
end

post '/user_name' do
	name_provided = params[:input_name]
	"Hello, #{name_provided}"
end