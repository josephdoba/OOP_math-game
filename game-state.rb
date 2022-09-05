# puts "Hello from game-state"
require "./player.rb"

puts "--- outside the class --- "

puts "--- inside the class --- "
class GameState
  # Player setup:
  @jacob = Player.new("Jacob")
  @coleen = Player.new("Coleen")
  @active_player = @jacob
  @passive_player = @coleen

  puts "the active player is Player #{@active_player.player_id} (#{@active_player.name})"
  puts "the passive player is Player #{@passive_player.player_id} (#{@passive_player.name})"

  # @jacob.deduct_point
  # puts @jacob.player_info

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
    puts "#{@active_player.name} (Player #{@active_player.player_id}): What is #{n1} + #{n2}?"
    @player_answer = Integer(gets.chomp)

    if @player_answer == correct_answer
      puts "You are correct!"
    elsif @player_answer != correct_answer
      puts "Wrong! lose a point"
      @active_player.deduct_point
    end
  end

  def next_turn(active, next_player)
    @passive_player = active
    @active_player = next_player
    @active_player
  end
  
  def game_end
    if @active_player.points == 0 then puts "Player #{player_id} wins with #{} point(s) remaining"
    end
  end

  def game_status
    puts "#{@jacob.name} P1: #{@jacob.points}/3 vs #{@coleen.name} P2: #{@coleen.points}/3"
  end

    
  def start
    puts "the game loop has started"
    seed_question()
    game_status()
    next_turn(@active_player, @passive_player)
  end

      
    # we need a loop to continually check if the win condition has been met.
end