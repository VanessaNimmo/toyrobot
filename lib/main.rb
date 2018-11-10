require_relative 'table.rb'
require_relative 'robot.rb'
require_relative 'player.rb'

robot = Robot.new
table = Table.new
player = Player.new

puts "Welcome to the Robot Game"
puts "Please enter a command"

command = gets.chomp
while command != 'q'
  player.parse(command)
  command = gets.chomp
end