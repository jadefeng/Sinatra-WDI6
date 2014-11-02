require 'sinatra'
require 'sinatra/reloader'

	get '/calc' do
		@first = params[:first].to_f
		@second = params[:second].to_f

		@result = case params[:operator]
		when '+' then @first + @second
		when '-' then @first - @second
		when '*' then @first * @second
		when '/' then @first / @second

		end
	erb :calc

	end

	get '/about' do
		erb :about 		 	# get the About view and put it on the screen
	end


## OLD VERSIONS OF CALCULATION
# get '/calc/multiply/:x/:y' do           # This is a ROUTE
#      @result = params[:x].to_f * params[:y].to_f      # @ makes it an instance variable so it will appear on calc.erb
#      erb :calc           # Goes into the views folder by default and finds an erb file called 'calc'. It will then use layout.erb to find the best layout to use.
# end

# get '/calc/add/:x/:y' do
#      @result = params[:x].to_f + params[:y].to_f
#      erb :calc           # The sintra will run the LAST line. This is what actually gets sent to the page.
# end

# erb : calc calls the calc file in the view folder to be pulled out 