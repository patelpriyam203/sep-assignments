require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width, @height = width, height
    @matrix = Array.new(width, Array.new(height))
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    if inbounds(x, y)
      @matrix[x][y] = pixel
    end
  end

  def at(x, y)
    @matrix[x][y]
  end

  private

  def inbounds(x, y)
    if (x < 0) || (y < 0)
      return false
    elsif (x > @width) || (y > @height)
      return false
    else
      return true
    end
  end

end
