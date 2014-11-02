system('clear')
require 'pry'

class Beer

	def self.main_verse(bottles)
		puts "#{bottles} bottles of beer on the wall,"
		puts "#{bottles} bottles of beer,"
		puts "I take 1 down and pass it around,"
		puts "#{bottles-1} bottles of beers on the wall!"
		puts " "
	end

	def self.second_last_verse
		puts "2 bottles of beer on the wall,"
		puts "2 bottles of beer,"
		puts "I take 1 down and pass it around,"
		puts "Only 1 bottle of beers on the wall!"
		puts " "
	end		

	def self.final_verse
		puts "1 bottle of beer on the wall,"
		puts "1 bottle of beer,"
		puts "I take it down and pass it around,"
		puts "No bottles of beers on the wall!"
		puts " "
	end	

	def self.song(bottles)
		if bottles >= 3
			bottles.downto(3) do |bottles|
				self.main_verse(bottles)
			end
			self.second_last_verse
			self.final_verse
		elsif bottles == 2
			self.second_last_verse
			self.final_verse
		elsif bottles == 1
			self.final_verse
		else 
			puts "That's not possible! Give me some bottles to sing about!"
		end
	end

end

class Fixnum
	def bottles_of_beer
		Beer.song(self) 	# Pulling out the class above!
	end
end

5.bottles_of_beer 	# Testing value


binding.pry 

