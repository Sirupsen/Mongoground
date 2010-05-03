require "sinatra"
require "erb"
require "models/user.rb"

get "/" do
  @users = User.all
  erb :index, {:layout => true}
end

post "/" do
  @user = User.create(params)
  erb :index, {:layout => true}
end