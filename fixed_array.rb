require_relative '../exceptions/out_of_bounds_exception'

class FixedArray

  attr_reader :length, :max_size, :aray

  def initialize(size)
    @max_size = size
    @aray = Array.new
    @aray.fill(nil, 0...@max_size)
    @length = @aray.length
  end

  def get(index)
    if index > (self.max_size - 1)
      raise OutOfBoundsException
    else
      return self.aray[index]
    end
  end

  def set(index, element)
    if index > (self.max_size - 1)
      raise OutOfBoundsException
    else
      self.aray[index] = element
    end
  end

end
