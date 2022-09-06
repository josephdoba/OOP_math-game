# puts "Hello from game-state"
require "./player.rb"

# puts "--- inside the class --- "
class GameState
  # Player setup:
  @@jacob = Player.new("Jacob")
  @@coleen = Player.new("Coleen")
  @@active_player = @@jacob
  @@passive_player = @@coleen

  # puts "the active player is Player #{@@jacob.player_id} (#{@@jacob.name})"
  # puts "the active player is Player #{@@coleen.player_id} (#{@@coleen.name})"
  # puts "the passive player is Player #{@@active_player.player_id} (#{@@active_player.name})"
  # puts "the passive player is Player #{@@passive_player.player_id} (#{@@passive_player.name})"
  
  def initialize
    @@active_game = true
  end
  
  # decided this would be a stretch feature to implement an answer check before processing

  # def player_answer_check(answer)
  #   if answer.is_a?(Integer) == false then "#{answer} is not an Integer. Try again"
  #     while @player_answer.is_a?(Integer) == false
  #       puts "Player 1: What is #{@n1} + #{@n2}?"
  #       @player_answer = Integer(gets.chomp)
  #     end
  #   end
  # end


  def seed_question
    n1 = rand(1..20)
    n2 = rand(1..20)
    correct_answer = n1 + n2
    
    puts "--- NEW TURN --- "
    # puts "#{@@active_player.name} (Player #{@@active_player.player_id}): What is #{n1} + #{n2}?"
    puts "#{@@active_player.name} (Player #{@@active_player.player_id}): What is #{n1} + #{n2}?"
    @player_answer = Integer(gets.chomp)

    if @player_answer == correct_answer
      puts "You are correct!"
    elsif @player_answer != correct_answer
      puts "Wrong! lose a point"
      @@active_player.deduct_point
    end
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
    if @@active_player.points == 0 && @@active_game == true then @@active_game == false
  end


  def start
    puts "the game loop has started"
    while @@active_game = true do
      seed_question()
      check_win_condition()
      game_status()
      next_turn(@@active_player, @@passive_player)
    end
    game_end()
  end

      
    # we need a loop to continually check if the win condition has been met.
end
end