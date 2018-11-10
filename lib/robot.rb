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

  def left
    if @placed
        current_position = Table::DIRECTIONS.index(@facing)
        @facing = Table::DIRECTIONS[current_position - 1]
    end
  end

  def right
    if @placed
        current_position = Table::DIRECTIONS.index(@facing)
        if current_position==3 
          new_position = 0
        else
          new_position = current_position += 1
        end
        @facing = Table::DIRECTIONS[new_position]
    end
  end
end