class Robot

  attr_reader :coordinate_x, :coordinate_y, :direction

  def initialize(coordinate_x, coordinate_y, direction)
    @dimension_x = 4
    @dimension_y = 4
    @all_directions = [:north, :east, :south, :west]

    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
    @direction = direction
    raise 'Invalid data' if falling?(coordinate_x, coordinate_y) || !@all_directions.include?(direction)
  end

  def move
    case @direction
      when :north
        new_coordinate_y = @coordinate_y + 1
        @coordinate_y = new_coordinate_y unless falling?(@coordinate_x, new_coordinate_y)
      when :east
        new_coordinate_x = @coordinate_x + 1
        @coordinate_x = new_coordinate_x unless falling?(new_coordinate_x, @coordinate_y)
      when :south
        new_coordinate_y = @coordinate_y - 1
        @coordinate_y = new_coordinate_y unless falling?(@coordinate_x, new_coordinate_y)
      when :west
        new_coordinate_x = @coordinate_x - 1
        @coordinate_x = new_coordinate_x unless falling?(new_coordinate_x, @coordinate_y)
      else
    end
    self
  end

  def left
    manoeuvre(:left)
  end

  def right
    manoeuvre(:right)
  end

  def report
    puts "Current Coordinates: x = #{@coordinate_x}, y = #{@coordinate_y}, direction = #{@direction.to_s}"
    self
  end

  private

  def manoeuvre(manoeuvre)

    current_index = @all_directions.find_index(@direction)
    case manoeuvre
      when :left
        @direction = @all_directions[(current_index - 1) % 4]
      when :right
        @direction = @all_directions[(current_index + 1) % 4]
      else
    end
    self
  end

  def falling?(coordinate_x, coordinate_y)
    coordinate_x > @dimension_x || coordinate_y > @dimension_y || coordinate_x < 0 || coordinate_y < 0
  end

end