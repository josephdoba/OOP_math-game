# puts "Hello from player"

class Player
  attr_accessor
  @@number_of_players = 0

  def initialize(name)
    @@number_of_players += 1
    @name = name
    @points = 3
    @player_id = @@number_of_players
  end
  
  def points
    @points
  end

  def name
    @name
  end

  def player_id
    @player_id
  end

  def deduct_point
    @points -= 1
  end

  def player_info
    "Player #{player_id()} and has #{points()} point(s) remaining"
  end


end
