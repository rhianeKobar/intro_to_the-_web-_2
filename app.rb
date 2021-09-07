require 'sinatra'
require 'sinatra/reloader'

get '/' do
		'Sinatra did not know this ditty'
end

get '/secret' do
    'One day I will learn how to use http!'
end

get '/kitty' do
	"miaow"
end

get '/vinyl' do
    "Vinyl Revival"
end

get '/random-cat' do
	@name = ["Amigo", "Misty", "Almond"].sample
	erb(:index)
end

get '/named-cat' do
	p params
	@name = params[:name]
	erb(:index)
end