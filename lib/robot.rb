class Robot
attr_accessor :x, :y, :facing
attr_reader :placed
 
  def initialize
    @x
    @y
    @facing
    @placed = false
  end

  def place(x, y, facing)
    @placed = true
    @x = x
    @y = y
    @facing = facing
  end
end