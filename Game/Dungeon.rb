class Dungeon          #contains nested classes Player and Room because they cannot be separate.
  attr_accessor :player            #creating Dungeon.new requires player like x = Dungeon.new "player 1"

  def initialize(player_name)      #initialize player_name so we can create a local variable.
    @player = Player.new(player_name)
    @rooms = []     #could also do @rooms = Array.new
  end

  class Player
    attr_accessor :name, :location

    def initialize(player_name)
      @name = player_name
    end
  end

  class Room
    attr_accessor :reference, :name, :description, :connections

    def initialize(reference, name, description, connections)  #initialize so we can create local variable
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end
  end

end

#rather than using a attr_accessible and def initialize statement in your class, you could use a struct like Person = Scruct.new(:name, :gender, :age).  You could pass data to this like fred = Person.new("fred", "male", 25)
