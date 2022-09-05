# puts "Hello from game-state"
require "./player.rb"

class GameState
  
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
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    correct_answer = @n1 + @n2
    
    puts "--- NEW TURN --- "
    puts "Player 1: What is #{@n1} + #{@n2}?"
    @player_answer = Integer(gets.chomp)

    if @player_answer == correct_answer
      puts "You are correct!"
    elsif @player_answer != correct_answer
      puts "Wrong! lose a point"
    end
  end

  def next_turn(active, next_player)
    active_player = next_player
    passive_player = active
    return active_player
  end
  
  def game_end
    if active_player.points == 0 then puts "Player #{player_id} wins with #{} point(s) remaining"
    end
  end
    
  def start
    puts "the game loop has started"
    puts "#{}"
    active_player = @player1
    passive_player = @player2
    seed_question()
  end

      
    # we need a loop to continually check if the win condition has been met.
end