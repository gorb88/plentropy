get '/sessions/new' do
  if session[:id]
    @user = User.find_by(session[:id])
  end

  erb :'/sessions/new'
end

post '/sessions' do
  user = User.find_by(username: params[:username])
  if user
    if user.password == params[:password]
      session[:id] = user.id
      redirect '/'
    else
      # wrong password error
    end
  else
    # wrong user error
  end
  erb :'/sessions/new'
end

get '/sessions/logout' do
  session.clear
  redirect '/'
end
