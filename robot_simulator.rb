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
end
