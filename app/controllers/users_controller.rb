get '/' do
    erb :index
end

get '/users/new' do
	erb  :'/users/new'
end	

post '/users/new' do
	@user = User.create(username: params[:username], email: params[:email], password: params[:password])
	redirect '/'	
end

get '/users/:id' do

	@round = Round.last
	erb :'users/show'
end