require 'profile'
#this is a shorter version of Dungeon.rb using Struct.

class Dungeon
attr_accessor :player    #makes :player available for read and writing w/ Dungeon.new "some name"
                         #now we need to get a player from our Player class, so we instantiate it
    def initialize(player_name)     #initialize player_name to make it available to
      @player = Player.new(player_name)      #this gives us a new player available at @player
      @rooms = []                                 #rooms is empty and allows for an array of rooms to be stored in the class Dungeons
    end

    def add_room(reference, name, description, connections)
      @rooms << Room.new(reference, name, description, connections)
    end

    def start(location)
      @player.location = location
      show_current_description
    end

    def show_current_description
      puts find_room_in_dungeon(@player.location).full_description
    end

    def find_room_in_dungeon(reference)
      @rooms.detect { |room| room.reference == reference }
    end

    def find_room_in_direction(direction)
      find_room_in_dungeon(@player.location).connections[direction]
    end

    def go(direction)
      puts "You go" + direction.to_s
      @player.location = find_room_in_direction(direction)
      show_current_description
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

      def full_description
        @name + "\n\nYou are in " + @description
      end
  end

end

#create main dungeon object
my_dungeon = Dungeon.new("Fred Bloggs")

#add rooms to the dungeon
my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west => :smallcave })
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", {:east =>:largecave})

#start the dungeo by placing the player in the large cave
my_dungeon.start(:largecave)

my_dungeon.go(:west)
