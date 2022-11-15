class Game
  attr_accessor :name
  # 4 to do's: check if answer is right, new turn function, game over function, response (correct or incorrect)
  def initialize(name)
    @name = name
  end

  def start (player_1, player_2)
    puts "Welcome #{player_1} and #{player_2} and good luck!"
  end

  def turn
    puts '----- NEW TURN -----'
  end   
  
  def ifcorrect
    "YES! You are correct"
  end

  def ifwrong
    "Seriously? NO!"
  end

  def game_over
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end
end