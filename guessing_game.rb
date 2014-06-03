class Game
  def initialize
    @number = rand(100) + 1
    @won = false
  end

  def start
    puts 'You have five chances to guess my number!'
    print "Guess a number between 1 and 100 > "
  end

  def play
    5.times do
      guess = guess_number
      if guess == @number
        @won = true
        break
      elsif guess > @number
        puts 'Too high'
      else
        puts 'Too low'
      end
    end
    finish
  end

  def guess_number
    gets.chomp.to_i
  end

  def finish
    if @won == true
      puts 'You win!'
    else
      puts "You lose, the number was #{@number}"
    end
  end
end

guessing_game = Game.new
guessing_game.start
guessing_game.play
