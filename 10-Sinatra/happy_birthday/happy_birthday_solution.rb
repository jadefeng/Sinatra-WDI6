system('clear')
require 'pry'

class Birthday
	def initialize
		@today = Date.today
	end

	def ask
		print "#{question}"
		gets.to_i
	end

	def congratulations
		@year = ask("What year were you born?")
		@day = ask("What date were you born?")
		@month = ask("What month were you born?")
	end

	def age(year, month, day)
		date_of_birth = Date.new(year, month, day)
		this_year = @today.year
		age_in_years = this_year - year
		if @today < Date.new(this_year, month, day)
			age_in_years -= 1
		end
		age_in_years
	end

	def rocky # Throwing punches
		congratulations
		age(@year,@month,@day).times do |punch|
			puts "PUNCH number #{punch+1}!"
			puts ""
		end

end

congratulations

binding.pry