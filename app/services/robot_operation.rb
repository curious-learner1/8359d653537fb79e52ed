class RobotOperation

	attr_reader :x,:y,:facing

	def initialize x=0,y=0,facing=""
		@x = x
		@y = y
		@facing = facing
	end

	def place command
		instruction = command.split(' ').second.split(',')
		@x = instruction[0].to_i
		@y = instruction[1].to_i
		@facing = instruction[2]
	end

	def move
		case @facing
			when 'NORTH'
				if @y != 5
					@x = @x 
					@y = @y + 1
				end
			when 'SOUTH'
				if @y != 0	
					@x = @x
					@y = @y - 1
				end	
			when 'EAST'
				if @x != 5	
					@y = @y
					@x = @x + 1
				end
			when 'WEST'
				if @x != 0
					@y = @y
					@x = @x - 1
				end
		end
	end	

	def left
		case @facing
			when 'NORTH'
				@facing = 'WEST'
			when 'WEST'
				@facing = 'SOUTH'
			when 'SOUTH'
				@facing = 'EAST'
			when 'EAST'
				@facing = 'NORTH'
		end 
	end

	def right
		case @facing
			when 'NORTH'
				@facing = 'EAST'
			when 'EAST'
				@facing = 'SOUTH'
			when 'SOUTH'
				@facing = 'WEST'
			when 'WEST'
				@facing = 'NORTH'
		end 
	end

	def report
		return @x,@y,@facing
	end

end