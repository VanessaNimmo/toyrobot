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

  def forward
    if @placed
      case @facing
      when 'NORTH'
        @y += 1
      when 'EAST'
        @x += 1
      when 'SOUTH'
        @y -= 1
      when 'WEST'
        @x -=1
      end
    end
  end
end