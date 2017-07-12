class Robot
  attr_reader :direction

  def orient(direction)
    @direction = direction
  end

  def bearing
    @direction
  end
end
