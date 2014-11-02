# # METHOD 1
# def leap(year)
# 	if year % 4 == 0 && year % 400 == 0 
# 		puts "It's a leap year!"
# 	elsif year % 4 == 0 && year % 100 != 0
# 		puts "It's a leap year!"
# 	else 
# 		puts "It's not a leap year!"
# 	end
# end

# puts "What year do you want to test?"
# test_year = gets.chomp.to_i
# leap(test_year)

# ## METHOD 2
# def ask(question)
# 	puts question
# 	gets.chomp.to_i
# end

# def leap_year
# 	year = ask("What year do you want to check")
# 	if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
# 		puts "Your year is a leap year"
# 	else
# 		puts "Your year is not a leap year"
# 	end
# end

# def menu
# 	puts "1. Please put leap year"
# end

# puts leap_year

## METHOD 3

class Year
	attr_accessor :year

	def initialize(year)
		@year = year
	end

	def leap?
		# leap years are divisible by 4, but not 100 unless it is divisible by 400
		 (divides_by_4?) && ( (not_divides_by_100?) || divides_by_400?)
	end

	def divides_by_4? 
		(@year % 4) == 0
	end

	def not_divides_by_100?
		(@year % 100) != 0
	end

	def divides_by_400?
		(@year % 400) == 0
	end

end

# p Year.new(1996).leap?

question
# Monkeypatching means adding an extra class to a class
class Fixnum
	def leap_year?
		Year.new( self ).leap?   # goes and gets the object we are dealing with
	end	
end

require 'pry'
binding.pry