class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @tri_arr = [@a, @b, @c]
  end

  def kind
    triangle_check
    if @tri_arr.uniq.length == 2 
    :isosceles 
    elsif @tri_arr.uniq.length == 3 
    :scalene
    elsif @tri_arr.all?
    :equilateral
    end
  end

  def triangle_check
    if @tri_arr.include?(0) || (@a + @b) <= @c || (@b + @c) <= @a || (@c + @a) <= @b
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    def message
      "wrong"
    end
  end

end

