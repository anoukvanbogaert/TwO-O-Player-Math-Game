class Question
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def correct?(answer)
    return answer == @num1 + @num2
  end

  def ask_questions(player, game)
  
  puts "#{player.name}: " + question
  
  answer = $stdin.gets.chomp
  
    if correct?(answer.to_i)
      puts "#{player.name}: " + game.ifcorrect
    else
      puts "#{player.name}: " + game.ifwrong
      player.kill
    end
  end

end