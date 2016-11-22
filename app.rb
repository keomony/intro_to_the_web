require 'sinatra'

get '/' do
  "hello world"
end

get '/testing' do
  "this is testing"
end

get '/secret' do
  "no secret yet"
end

get '/random-cat' do
  @name = ["Mony", "Jenna", "Agata"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/named-cat' do
  erb(:index)
end
