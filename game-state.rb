# puts "Hello from game-state"

require "./player.rb"

class GameState

  def initialize
    @@num1 = rand(1..20)
    @@num2 = rand(1..20)
  end

  def seed_question
    puts "--- NEW TURN --- "
    puts "What is #{@@num1} + #{@@num2}?"
end

