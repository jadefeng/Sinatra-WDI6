require 'pry'

class Scrabble
	attr_accessor :word
	

	raw_scores = {
		%w{A E I O U L N R S T } => 1,
		%w{D G} =>2,
		%w{B C M P} =>3,
		%w{F H V W Y} => 4,
		%w{K}   => 5,
		%w{J X}  => 8,
		%w{Q Z } => 10,
	}

	SCORE = {}

	raw_scores.each do |letters, points|
		letters.each do |letter|
			letter.gsub(" ", "") #Clean up letters 
			SCORE[letter] = points
		end
	end		

	def self.score(word) 	# Only using 'self' so we don't need to create new score objects to store memory
		# sum = 0
		# word.upcase.split("" .each do |letter|
		# 	sum += SCORE[letter]
		# end
		# sum

# Using inject. Specify the initial value in inject(0)
		words.upcase.split("").inject(0) do |sum, letter|
			sum + SCORE[letter]
		end

		def self.values 	# Calls out the score hash immediately after Scrabble.value entered
			SCORE
		end

	end
end


puts Scrabble.score('ORANGE')
puts Scrabble.score('ZZZ')
puts Scrabble.score('TREE')

# This method above does not ask to create a scrabble object. It only wants to SCORE, and the score alone. 
# Does not create an instance of the SCRABBLE SCORE
# Instead could do 'Scrabble.new("cabbage").score'.	The new creates an INSTANCE of it, which is "cabbage". 



binding.pry