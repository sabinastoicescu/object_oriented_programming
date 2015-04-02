
class Plateau
	def initialize(width, height)
		@width = width
		@height = height
		@rovers = []
	end

	def add_rover(x,y,direction)
		if x > @width || x < 0 || y > @height || y < 0
		  	puts "Rover is out of balance"
		else
			#Rover is okay, initialize it and place it
			my_rover = Rover.new(x,y,direction)
			@rovers << my_rover
		end
	end

	def command_rover1(commands)
		@rovers[0].instruction(commands)
	end

	def command_rover2(commands)
	end

	def to_s
		"Height: #{@height}, Width: #{@width}, Rovers: #{@rovers}"
	end
end


class Rover 

	def initialize(init_x,init_y,init_direction)#---state---
		@x = init_x #otherwise if I add values they go into space
		@y = init_y
		@direction = init_direction
	end

	def instruction(input)
		values = input.split("")
		values.each do |value| 
			if value == "L"
				turn_left
			end
		end
	end

	def move_forward
		if @direction == "N"
			@y += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "W"
			@x -= 1
		else
			puts "Please input viable direction"
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		else
			puts "Can't turn left, invalid direction"
		end
	end

	def turn_right
		#Build out logic for a rover to turn right, similar to turn left
	if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		else
			puts "Can't turn left, invalid direction"


	end

	def to_s
		"Rover x: #{x}, y:#{y}, facing: #{direction}."	
	end

end

plat = Plateau.new(9,9)
plat.add_rover(1 , 2 , "N")
plat.add_rover(2 , 3 , "E")
plat.command_rover1("LMLMLMLMM")
plat.command_rover2("MMRMMRMRRM")
puts plat

