require 'sinatra'
require 'shotgun'


get '/random_cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named_cat' do
  p params
   @name = params[:name]
  erb(:index)
end
