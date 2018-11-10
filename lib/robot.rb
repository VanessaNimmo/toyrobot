class Robot
attr_accessor :x, :y, :facing
attr_reader :placed

# Could we initialise it as a collection of x and y values that it accepts?
# E.g. @x = [0,1,2,3,4], then moving on the board is moving up or down this array.
# The size of the array could be dependent on the size of the initialised board.
  def initialize
    @x
    @y
    @facing
    @placed = false
  end

  def place(x, y, facing)
    if valid_params(x, y, facing)
      @placed = true
      @x = x
      @y = y
      @facing = facing
    end
  end

  def forward
    if @placed
      case @facing
      when 'NORTH'
        @y += 1 unless @y == 4
      when 'EAST'
        @x += 1 unless @x == 4
      when 'SOUTH'
        @y -= 1 unless @y == 0
      when 'WEST'
        @x -=1 unless @x == 0
      end
    end
  end

  def left
    if @placed
        current_direction = Table::DIRECTIONS.index(@facing)
        @facing = Table::DIRECTIONS[current_direction - 1]
    end
  end

  def right
    if @placed
        current_direction = Table::DIRECTIONS.reverse.index(@facing)
        @facing = Table::DIRECTIONS.reverse[current_direction - 1]
    end
  end

  def report
    "#{@x},#{@y},#{@facing}"
  end

  private

  def valid_params(x, y, facing)
    x>=0 && x<=4 && y>=0 && y<=4 && Table::DIRECTIONS.include?(facing)
  end
end