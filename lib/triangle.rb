require "pry"

class Triangle
  
  def initialize(side_1, side_2, side_3)

    if side_1 > 0 && side_2 > 0 && side_3 > 0
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    else
      raise TriangleError
    end
  end

  def kind
    if @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 ||@side_2 + @side_3 <= @side_1
    raise TriangleError
    else
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
        :scalene
      else
        :isosceles
      end
    end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality"
    end
  end
  
end

