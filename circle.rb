class Drawing
  def Drawing.give_me_a_circle
    Circle.new
  end

  class Line
    def give_me_a_line
      "this is a line"
    end
  end

  class Circle
    def what_am_i
      "this is a circle"
    end
  end
end

a =  Drawing.give_me_a_circle
puts a.what_am_i ## this gives us access to a new instance of circle and to the instace of what_am_i
a = Drawing::Circle.new
puts a.what_am_i ## invoking Drawing::Circle.new gives us access to the circle nested class, wherein we can call on what_am_i
a = Drawing::Line.new
puts a.give_me_a_line