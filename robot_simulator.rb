class Robot
  attr_reader :direction

  CARDINAUX = [:east, :west, :north, :south].freeze

  def orient(direction)
    unless CARDINAUX.include?(direction)
      return raise ArgumentError
    end
    @direction = direction
  end

  def bearing
    @direction
  end

  def turn_right
    @direction = case @direction
    when :north then  :east
    when :south then :west
    when :east  then :south
    when :west  then :north
    end
  end

  def turn_left
    @direction = case @direction
    when :north then  :west
    when :south then :east
    when :east  then :north
    when :west  then :south
    end
  end

end
