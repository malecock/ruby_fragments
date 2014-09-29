#this is a script to test scope of modules and accessing them via local scope.

module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
    class Ruler
      attr_accessor :name
    end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Ghengis Khan of Moskau"

puts a.length
puts b.name

include Country
c = Ruler.new
c.name = "King Henry VIII"