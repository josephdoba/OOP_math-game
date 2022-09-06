A small terminal game to practice Object-Orientated Programming (OOP) with Ruby. 

## Rules: 
- Each player takes turns guessing math problems. Players get 3 lives each, and if they get the wrong answer they lose a life. 
- At the end of every turn, The lives counter updates and is shown for both players
- Once a player has lost all lives a winner is announced and the game ends. When this happens, we should announce who won and show the score of that player.


eg:
```
player 1: "What does 5 + 3 equal?"
p1 input: 9
Player 1: Wrong! lose a point
lives remaining: P1: 2/3 vs P2: 3/3
--- NEW TURN --- 
Player 2: "What does 2 + 6 equal?"
p2 input: 8
Player 2: You are correct!
P1: 2/3 vs P2: 3/3
--- NEW TURN --- 
( some time later... )
Player 1 wins! points remaining: 1/3
--- GAME OVER --- 
Thanks for playing!
```
# Nouns for classes: 

## Player Class:
  - sets the initial points total, name, and player_id.
  - allows for `game-state.rb` to reference the player class.
  - holds a method to deduct points from the player.

## Game-state Class:
  - should be able to generate math questions.
  - should manage who the `active_player` is, player one going first.
  - contains the game loop, and checks at the end of every answer if the win condition has been met (a players' points equal to 0, and announcing the winner)
  - should be able to compare the result of the active players' input, to the sum of the numbers generated.
  - holds' all other in-game messages
