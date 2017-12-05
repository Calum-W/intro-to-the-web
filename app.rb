require 'sinatra'
require 'shotgun'


get '/random_cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat_form' do
  erb(:cat_form)
end

post '/named_cat' do
  p params
   @name = params[:name]
  erb(:index)
end
