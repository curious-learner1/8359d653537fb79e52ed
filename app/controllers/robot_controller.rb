class RobotController < ApplicationController

	def get_position
		commands = params[:commands]
		robot = RobotOperation.new
		commands.map do |command|
			if command.include?('PLACE')
				robot.place command
			else
				robot.send(command.downcase)
			end
		end
		
		render json: {location: robot.report}, status: 200
	end

end
