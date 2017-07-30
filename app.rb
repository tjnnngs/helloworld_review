require "sinatra"

get '/' do #when we go to the root, we are going to go to the erb:index
	redirect '/user_name'
end

get '/user_name'do
   erb :index
end

post '/user_name' do
	name_provided = params[:input_name]
	redirect '/age?name_provided=' + name_provided
end

get '/age' do
	name_provided = params[:name_provided]
	puts "name_provided in get age #{name_provided}"
	erb :age, :locals => {:name_provided => name_provided}
end

# post 'age' do
# 	age_provided = params [:input_age]
# 	redirect '/fave_nums?user_age' + user_age
# end