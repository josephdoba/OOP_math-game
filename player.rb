# puts "Hello from player"

class Player
  attr_accessor :player_answer_check
  @@number_of_players = 0

  def initialize(name)
    @@number_of_players += 1
    @name = name
    @points = 3
    @player_id = @@number_of_players
  end

  def player_id
    return player_id
    "player #{@player_id} is named: #{@name}, and has #{@points} point(s) remaining"
  end

  def incorrect_guess
    puts "Wrong answer! Player #{@player_id} lost a point"
    @points -= 1
  end
end
