# Making a web server!

require 'pry'
require 'sinatra'
require 'sinatra/reloader' 		# Will upload any changes to the file without needing to restart Sinatra

get '/' do
	"Welcome to the home page!"
end

get '/hello' do 
	"Hello world from Sinatra and sexy ladehs. Sinatra don't care. Sinatra has got things to do."
end

get '/goodbye' do
	"Don't cry for me Argentina. Goodbye. :'("
end

get '/hi/:name' do 			# Need the ':' so that it can be updated according 
	"Hello #{params[:name]}." 	# Allowing for dynamics. e.g. replacing ":something" with "Jade" will yield "hello Jade"
end

get '/hi/:first/:last' do 	# Adding more variability!
	"Your first name is #{params[:first]} and your last name is #{params[:last]}."
end 

get '/hi/:first/:last/:age' do # Even more! It doesn't stop! This just won't stop!
	"Your first name is #{params[:first]} and your last name is #{params[:last]}. Your age is #{params[:age]}."
end

# Let's do some maths!
get '/calc/multiple/:x/:y' do
	result = params[:x].to_f * params[:y].to_f 		# to_f is floating point
	"The result is #{result}."
end
