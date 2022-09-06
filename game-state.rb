# puts "Hello from game-state"
require "./player.rb"

class GameState
  # Player setup:
  @@jacob = Player.new("Jacob")
  @@coleen = Player.new("Coleen")
  @@active_player = @@jacob
  @@passive_player = @@coleen
  
  def initialize
    @@active_game = true
  end
  
  def next_turn(active, next_player)
    @@passive_player = active
    @@active_player = next_player
    @@active_player
  end
  
  def game_end
    if @@active_game == false
      puts "Player #{@@passive_player.player_id} wins with #{@@passive_player.player_id} point(s) remaining"
    end
  end
  
  def game_status
    puts "#{@@active_player.name} P1: #{@@active_player.points}/3 vs #{@@passive_player.name} P2: #{@@passive_player.points}/3"
  end
  
  def check_win_condition
    if @@active_player.points == 0 || @@passive_player.points == 0 && @@active_game == true
      return @@active_game == false
    end
  end
  
  def seed_question
    n1 = rand(1..20)
    n2 = rand(1..20)
    correct_answer = n1 + n2
    
    puts "--- NEW TURN --- "
    puts "#{@@active_player.name} (Player #{@@active_player.player_id}): What is #{n1} + #{n2}?"
    @player_answer = Integer(gets.chomp)
  
    if @player_answer == correct_answer
      puts "You are correct!"
    elsif @player_answer != correct_answer
      puts "Wrong! lose a point"
      @@active_player.deduct_point
      check_win_condition()
    end
  end

  def start
    puts "the game loop has started"
    while @@active_game = true do
      seed_question()
      game_status()
      next_turn(@@active_player, @@passive_player)
    end
    game_end()
  end

end