# puts "Hello from game-state"

require "./player.rb"

class GameState
  
  def initialize
    @@active_game = true
  end
  
  def player_answer_check(answer)
    puts answer
    puts answer.is_a? Integer
    
    # if answer.is_a?(Integer) then puts answer.is_a?(Integer)
      # puts "#{answer} is an integer" 
      # else puts "#{answer} is not an integer. Try again"
    # end
  end


  
  def seed_question
    n1 = rand(1..20)
    n2 = rand(1..20)
    correct_answer = n1 + n2
    
    puts "--- NEW TURN --- "
    puts "Player 1: What is #{n1} + #{n2}?"
    player_answer = Integer(gets.chomp)

    # If wrong type of input, repeat the question above

    # if an integer, check if the answer is correct
    
    if player_answer_check(player_answer) == true
      if player_answer == correct_answer
        puts "You are correct!" 
      elsif player_answer != correct_answer
        puts "Wrong! lose a point"
      end
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
    
  def start
    while active_game == true
    active_player = @player1
    passive_player = @player2
    # we need a loop to continually check if the win condition has been met.
    end
  end

end

end