## Creating a file! Doesn't just exit in memory! This is a ruby object that is attached to a real file!
db = File.new("database.txt", 'a+') 	# Open (or create) a file and add data to the end of the data file

print "Input person and save to a file? (y/n)"
response = gets.chomp.downcase

while response == 'y'
	print "Enter name, age, gender: "
	input = gets.chomp 	# Can also do db.puts(gets.chomp)
	db.puts(input) # get chomp will read a line, and this will save it into the file

	print "Input person and save to a file? (y/n)"
	response = gets.chomp.downcase
end

db.close # Closes the program else it will crash

# Creates this new class called Person
class Person
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end

	def to_s 	# Only just returns a string. The program returns it for us
		"Hello! #{name.capitalize} is a #{age} years old #{gender}."
	end

end

# Making each database text into an object each
db = File.new('database.txt', 'r') 	# Opening the database in read mode
people = []				

db.each do |line|		# Ruby is using collections to use each line in a loop!!!! 
	person_array = line.chomp.split(',') 	# = ['jade', '22', 'female']
	person = Person.new(person_array[0], person_array[1], person_array[2]) 	# Making a person object here!
	people << person 	# puting the person array into the people array!
end

db.close 	# Close it once you finished needing the database!

# Calls out the to_s method from the Person class
people.each do |person|
	puts person
end


require 'pry'
binding.pry