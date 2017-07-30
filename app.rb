require "sinatra"

get '/' do #when we go to the root, we are going to go to the erb:index
	erb :index #put in the symbol for the page we want

end

post '/user_name' do
	name_provided = params[:input_name]
	"Hello, #{name_provided}"
end