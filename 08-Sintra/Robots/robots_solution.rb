require 'securerandom'

class Robot
	attr_reader :instruction_count						#Allows us to get and set the name

	def initialize
		self.assign_name 	# Every time we call up a robot, we reset it of this class each time
		# Reset the robot so it gets a name
		self.assign_mac 	# Mac will only will be assigned in the initialize, not in the reset
	
		@instruction_count = 0
		@creation_time = @boot_time = Time.now
	end

	# Manually putting in NAME and MAC, rather than at ATTR_reader. This lets us also change the instruction count
	def name 
		@instruction_count += 1
		@name 	# Putting name at the bottom since the last line is what actually gets returned
	end

	def mac 		# Rather than doing it at the attr_reader, this will let us pull out the name and find then instruction count
		@instruction_count += 1
		@mac
	end

	def reset
		@instruction_count += 1
		@boot_time = Time.now
		self.assign_name
	end

	def assign_name
		# Call the initalize method again
		numbers = Random.rand 100...1000 	# Ensures a 3 digit number
		letters = ('AA'..'ZZ').to_a.sample 	# Can do this as ('A'..'Z').to_a.sample(2) instead
		@name = letters + numbers.to_s
	end

	def assign_mac # Mac address: 01:23:45:67:89:ab 
		@mac =  (0...6).map do
			SecureRandom.hex(1)
		end.join(':')
	end

	# Pulls out the instruction count
	def instruction_count
		@instruction_count
	end

	# Pulls out time since its creation and its reboot
	def timers
		@recall_time = Time.now
		puts "#{ (@recall_time - @boot_time).to_i } seconds since last boot, #{ (@recall_time - @creation_time).to_i } seconds since creation"

	end
end


require 'pry'

	puts "Robot 1: "
	robot1 = Robot.new
	puts robot1.name
	puts robot1.name
	puts robot1.name
	 
	puts "Robot 2: "
	robot2 = Robot.new
	puts robot2.name
	puts robot2.name
	puts robot2.name

	puts "Robot 3: "
	robot3 = Robot.new
	puts robot3.name
	puts robot3.name
	puts "Resetting to factory settings."
	robot3.reset
	puts robot3.name
	puts robot3.name

	puts "Robot 3: "
	robot3 = Robot.new
	puts robot3.name
	puts robot3.name
	puts "Resetting to factory settings."
	robot3.reset
	puts robot3.name
	puts robot3.name
	puts robot3.instruction_count # => 5

	puts "Robot 3: "
	robot3 = Robot.new
	puts robot3.timers # => "21 seconds since last boot, 21 seconds since creation"
	puts robot3.name
	puts "Resetting to factory settings."
	robot3.reset
	puts robot3.timers # => "8 seconds since last boot, 29 seconds since creation"
	puts robot3.name

binding.pry