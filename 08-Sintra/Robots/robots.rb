
class Robot
	attr_accessor :new_robot

	def initialize(new_robot) 	# When you create a new robot, you want to setup a new name
		@new_robot = new_robot
	end

## Give Robot a new name
	def name
			new_name_letters = (0...2).map { ('a'..'z').to_a[rand(26)] }.join.upcase
			new_name_numbers = (0...3).map { (0..9).to_a[rand(10)] }.join
			new_name = [new_name_letters, new_name_numbers].join
			3.times do
				puts new_name
			end
	end

## Reset Robot name
	def reset
		update_name_letters = (0...2).map { ('a'..'z').to_a[rand(26)] }.join.upcase
		update_name_numbers = (0...3).map { (0..9).to_a[rand(10)] }.join
		update_name = [update_name_letters, update_name_numbers].join
		@robot_reset = update_name
	end

## Robot Time - since last boot and since creation
	def robot_counter

	end
end

# class Fixnum
# 	def name
# 		Robot.robot_called(self) 	
# 	end
# end


## Checking on pry
require 'pry'

puts "Robot 1: "
robot1 = Robot.new
puts robot1.name

binding.pry








