# puts "Hello from game-state"

require "./player.rb"

class GameState
  
  def initialize
    @@active_game = true
  end
  
  def seed_question
    include player_answer_check
    n1 = rand(1..20)
    n2 = rand(1..20)
    @correct_answer = n1 + n2
    
    puts "--- NEW TURN --- "
    puts "Player 1: What is #{n1} + #{n2}?"
    player_answer = gets.chomp
    
    if player_answer_check(player_answer) == true
      if player_answer == correct_answer
        puts "You are correct!" 
      elsif player_answer != correct_answer
        puts "Wrong! lose a point"
      end
    end

    def player_answer_check(answer)
      @answer = get.chomp(answer)
      if @answer.is_a? Integer then "Whoops, entered the wrong input. Try again" else return true end
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