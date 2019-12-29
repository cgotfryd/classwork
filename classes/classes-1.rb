# Classes 2

# A very basic, not useful example
# class Animal
#   def initialize
#     # Attributes
    # @speed = 100
    # @size = 5
    # @num_of_legs = 4
    # @height = 10
#   end 

# end

# dog = Animal.new
# cat = Animal.new

class Animal 

	def initialize(spd, sz, nol, hght)
		@speed = spd
		@size = sz
		@num_of_legs = nol
		@height = hght
	end

	def get_speed # Getter
		return @speed
	end

	def set_speed(new_speed) # Setter
		@speed = new_speed
	end

	def get_size # Getter
		return @size
	end

	def set_size(new_size) # Setter
		@size = new_size
	end

	def get_num_of_legs
		return @num_of_legs
	end

	def set_num_of_legs(new_num)
		@num_of_legs = new_num
	end

	def get_height
		return @height
	end

	def set_height(new_height)
		@height = new_height
	end
end

cat = Animal.new(10, 20, 4, 0.25)
fish = Animal.new(100, 10, 2, 200)
# Incorrect way to get speed
# puts fish.speed

# Correct: Using a getter
puts fish.get_speed
fish.set_speed(200)
puts fish.get_speed

puts "--"

puts fish.get_num_of_legs
fish.set_num_of_legs(0)
puts fish.get_num_of_legs

puts "--"

puts fish.get_height
fish.set_height(12)
puts fish.get_height

puts "--"

puts fish.get_size
fish.set_size(112)
puts fish.get_size