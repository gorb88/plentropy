get '/users/new' do
  if session[:id]
    @user = User.find_by(session[:id])
  end

  erb :'/users/new'
end

post '/users' do
  user = User.new(params[:user])
  user.password = params[:password]

  if user.save
    redirect '/'
  else
    erb :'/users/new'
  end
end
