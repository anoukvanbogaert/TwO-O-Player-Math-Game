require './game'
require './player'
require './question' 

@new_game = Game.new("new_game")
player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")

@new_game.start(player_1.name, player_2.name)

begin  
  question1 = Question.new
  question1.ask_questions(player_1, @new_game)

  question2 = Question.new
  question2.ask_questions(player_2, @new_game)

puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
puts @new_game.turn

end while player_1.lives > 0 && player_2.lives > 0

# end of game
if player_1.lives == 0
  puts "#{player_2.name} wins with a score of #{player_2.lives}/3"
else 
  puts "#{player_1.name} wins with a score of #{player_1.lives}/3"
end

puts @new_game.game_over



