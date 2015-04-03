class Plateau
attr_accessor :width, :heigth
	def initialize(width, height)
	@width=width
	@heigth=heigth
	end

#def plateau_size(heigth, width)
#if heigth [1..9] then puts ""
#end	

end

class Rover
attr_accessor :x, :y, :direction

	def initialize(x,y,direction)
		@x = x
		@y = y
		@direction = direction
	end

	
	def instruction(user_input)
		command = user_input.split (//)
		command.each do |x| 
			if x == "M"
					move
				elsif x == "L"
					left
				elsif x == "R"
					right
			end
				end
	end

	# define method for change in direction to the left 
	def left
		if @direction == "N"
		@direction = "W"
		elsif @direction == "W"
		@direction = "S"
		elsif @direction == "S"
		@direction = "E"
		elsif @direction == "E"  
		@direction = "N" 
		else puts "The direction requested is not a valid direction." 
		end
	end

	
# define method for change in direction to the right
	def right
		if@direction == "N"
		@direction = "E"
		elsif @direction == "E"
		@direction = "S"
		elsif @direction == "S"
		@direction = "W"
		elsif @direction == "W"
		@direction = "N"
		else "The direction requested is not a valid direction."
		end
	end	

	#assign a method for the rover to move in the four cardinal points
	def move
		if @direction == "N"
		@y = @y + 1	
		elsif @direction == "S"
		@y= @y - 1
		elsif @direction == "W"
		@x= @x-1
		elsif @direction =="E"
		@x=@x+1
		else "Not a valid direction" 
		end
	end

	# display the position of the rover
	def to_s
		"#{@x} #{@y} #{@direction}"
	end

	
end

plateau=Plateau.new(5,5)
rover1=Rover.new(1,2,"N")

rover1.instruction("LMLMLMLMM")
puts rover1
rover2=Rover.new(3,3,"E")

rover2.instruction("MMRMMRMRRM")
puts rover2
