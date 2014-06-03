class Game
  def initialize(number = 100)
    @number = rand(number) + 1
    @won = false
  end
end
