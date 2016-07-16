get '/' do
	"hello world"
    erb :index
end

get '/users/new' do
	erb  :'/users/new'
end	

post '/users/new' do
	@user = User.create(name: params[:username], email: params[:email], password: params[:password])
	redirect '/'	
end

