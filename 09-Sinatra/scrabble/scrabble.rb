require 'pry'

class Scrabble
	attr_accessor :word

	def initialize(word)
		@word = word.to_s
	end

	def score
		@word_string = @word.downcase.split(//)
		
		scrabble_score = 0		
			@word_string.each do |letter|
				case letter 
					when "q", "z"
					scrabble_score += 10
					when "j", "x"
						scrabble_score += 8
					when "k"
						scrabble_score += 5
					when "f", "h", "v", "w", "y"
						scrabble_score += 4
					when "b", "c", "m", "p"
						scrabble_score += 3
					when "d", "g"
						scrabble_score += 2
					when "a", "e", "i", "o", "u", "l", "r", "s", "t" 
						scrabble_score += 1
					else
						scrabble_score += 0
				end
			end
			
		puts @word_string 
		puts scrabble_score 
	end

end



### Tests
x = Scrabble.new("orange")
p x.score

y = Scrabble.new("queen")
p y.score 

# Scrabble.score("cabbage") 	# This is so we don't need to make a new object every time we call it

binding.pry
