require "./player.rb"
require "./game-state.rb"

jacob = Player.new("Jacob")
coleen = Player.new("Coleen")

puts jacob
puts coleen


game = GameState.new

game.start