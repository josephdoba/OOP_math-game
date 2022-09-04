puts "Hello from player"

class Player
  attr_accessor :player_answer
  @@number_of_players = 0

  def initialize(name)
    @@number_of_players += 1
    @name = name
    @lives = 3
    @player_id = @@number_of_players
  end

  def player_answer(answer)
    @answer = answer
    if !answer.is_integer? then "Whoops, entered the wrong input. Try again" else return true end
  end

  def player_info
    "player #{@player_id} is named: #{@name}, and has #{@lives} life/lives remaining"
  end

end
