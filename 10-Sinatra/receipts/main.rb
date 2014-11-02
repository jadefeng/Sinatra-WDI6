require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do # Query to the internet
	erb :new
end

post '/' do  	# Can post something to the server
	@service_provided = params["service"].to_s
	@cost_charged = params["cost"].to_s

	db = File.new("database.txt", 'a+')
		db.puts(@service_provided + ',' + @cost_charged)
	db.close 

	erb :receipt 	# Show whatever parameters they wrote to appear on the screen
end


# Have all of the information displayd on the :all page


get '/all' do

#######
	class Receipt
		attr_accessor :service, :cost

		def initialize(service, cost)
			@service = service
			@cost = cost
		end

		def to_s 	
			"Hello! #{service.capitalize} costs $#{cost}."
		end
	end 
#######
	db = File.new('database.txt', 'r')
	@receipts_list = []				

	db.each do |line|		 
		receipt_array = line.chomp.split(',') 
		new_receipt = Receipt.new(receipt_array[0], receipt_array[1]) 	
		@receipts_list << new_receipt 	
	end

	db.close 	

#######

	erb :all
end