require 'pry'

class Triangle
  # write code here
  attr_accessor :side_length_1, :side_length_2, :side_length_3

  def initialize(length_1, length_2, length_3)
    @side_length_1 = length_1
    @side_length_2 = length_2
    @side_length_3 = length_3
  end

  def kind
    sum_1 = side_length_2 + side_length_3
    sum_2 = side_length_1 + side_length_3
    sum_3 = side_length_1 + side_length_2

    if !(sum_1 > side_length_1 && sum_2 > side_length_2 && sum_3 > side_length_3)
      raise TriangleError
    end

    if side_length_1 == side_length_2 && side_length_1 == side_length_3
      :equilateral
    elsif side_length_1 == side_length_2 || side_length_2 == side_length_3 || side_length_1 == side_length_3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "The side lengths given do not represent a valid triangle."
    end
  end
end

# equilateral = Triangle.new(4,4,4)
# isosceles = Triangle.new(4,3,4)
# scalene = Triangle.new(3,7,8)

# binding.pry