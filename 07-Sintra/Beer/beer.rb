# * Your file should be called `beer.rb`
# * The program should be called with `Beer.song`
# * The program should output to STDOUT using `puts`
# * Each verse should be separated by a single blank line.
# require 'pry'


def beer_song(number_of_beers)

	if number_of_beers >=2
		beer_array = (3 .. number_of_beers).to_a.reverse

		beer_array.each do |n|
			puts "#{n} bottles of beer on the wall,"
			puts "#{n} bottles of beer,"
			puts "take 1 down and pass it around,"
			puts "#{n-1} bottles of beers on the wall!"
			puts " "	
		end
		puts "2 bottles of beer on the wall,"
		puts "2 bottles of beer,"
		puts "take 1 down and pass it around,"
		puts "Only 1 bottle of beers on the wall!"
		puts " "

	else
		" "
	end

	puts "1 bottle of beer on the wall,"
	puts "1 bottle of beer,"
	puts "take it down and pass it around,"
	puts "No bottles of beers on the wall!"
	puts " "

end

beer_song(10)

# binding.pry