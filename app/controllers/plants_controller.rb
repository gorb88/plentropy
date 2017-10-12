get "/plants/new" do
  if session[:id]
    @user = User.find(session[:id])
  end

  erb :'/plants/_new'
end

post "/plants" do
  if session[:id]
    @user = User.find(session[:id])
    plant = Plant.new(params[:plant])
    if plant.save
      @user.plants << plant
      redirect "/users/#{@user.id}/plants"
    else
      erb :'/plants/_new'
    end
  else
    redirect '/'
  end
end
