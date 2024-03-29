class Shape
end

class Square < Shape
  def initialize(side_length) #initialize is special method called when a new object based on that class is created.
    @side_length = side_length
  end
  def area
    @side_length * @side_length
  end
  def perimeter
    @side_length * 4
  end
end

class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def area
    @base_width = @height / 2
  end
  def perimeter
    @side1 + @side2 + @side3
  end
end

a = Square.new(10)
b = Square.new(5)
puts a.area
puts b.area


