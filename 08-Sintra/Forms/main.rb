require 'sinatra'
require 'sinatra/reloader'

get "/" do 
	erb :forms
end

get "/about" do 
	erb :about
end

get "/faq" do 
	erb :faq
end

# get "/process" do 
# 	# NOT ASKING ERB :PROCESS SO THE LAYOUT ISN'T GETTING PULLED OUT TO MAKE IT LOOK PRETTY 
# 		#params.inspect # Get a string of params, but also print out the details related
# 		#params['hotdogs'] # Only gets the name='hotdogs' params
# 		@result = "#{params['hotdog_count']} #{params['hotdogs']} hotdogs consumed on #{params['hotdog_time']} at #{params['hotdog_date']}."
# 	erb @result
# end

get "/process" do # To see the result from the selection
	erb params.inspect
end

get "/search" do
	erb :search
end

get "/search_results" do
	erb "You searched for #{params["search_string"]}."
end

