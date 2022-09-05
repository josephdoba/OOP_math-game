# puts "Hello from player"

class Player
  attr_accessor
  @@number_of_players = 0

  def initialize(name)
    @@number_of_players += 1
    @points = 3
    @player_id = @@number_of_players
  end
  
  def points
    return @points
  end
  
  def player_id
    return @player_id
  end

  def player_info
    "player #{player_id()} and has #{points()} point(s) remaining"
  end


end
