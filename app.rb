require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "I love coding"
end

get '/myname' do
  "My name is Bond, James Bond!"
end

get '/random-cat' do
  @name = ["Ciccio", "Fran", "Bond, James Bond"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end


# shotgun app.rb -p 4567
