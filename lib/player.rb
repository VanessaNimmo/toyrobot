require_relative 'robot.rb'

class Player

  def initialize 
    @robot = Robot.new
  end

  def parse(command)
    if command == "MOVE"
      @robot.forward
      puts "You moved forward! Maybe."
    elsif command == "REPORT"
      report = @robot.report
      puts report
    elsif command.start_with?("P")
      placement = command.split(" ")[1].split(",")
      @robot.place(placement[0].to_i, placement[1].to_i, placement[2])
    elsif command == "LEFT"
      @robot.left
    elsif command == "RIGHT"
      @robot.right
    else
      puts "Not a valid command"
    end
    # if place, call the place command
    # if move, call the move command
    # if report, call the report command and print the result
    
  end
end