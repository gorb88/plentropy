get '/' do
  if session[:id]
    @user = User.find(session[:id])
  end
  erb :'/index'
end
