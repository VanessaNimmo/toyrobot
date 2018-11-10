class Table
attr_reader :x, :y
DIRECTIONS = ['NORTH','EAST','SOUTH','WEST']
  def initialize(x,y)
    @x = x-1
    @y = y-1
  end

end

# Using coordinates for directions?
# e.g. if the square in front of me is a higher x, I'm facing East
# If the square in front of me is a lower x, I'm facing West
# If the square in front of me is higher y, I'm facing North
# If the square in front ot me is lower y, I'm facing East