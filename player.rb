class Player
  attr_accessor :name, :lives, :score
  def initialize(name)
    @name = name
    @lives = 3
  end

  def kill
    @lives -= 1
  end
end
