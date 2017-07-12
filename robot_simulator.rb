class Robot
  attr_reader :direction

  def orient(direction)
    unless [:east, :west, :north, :south].include?(direction)
      return raise ArgumentError
    end
    @direction = direction
  end

  def bearing
    @direction
  end
end
