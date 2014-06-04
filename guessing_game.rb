# Guessing game with five guesses to pick a random number 1 - 100
class GuessingGame
  def initialize
    @number = rand(100) + 1
    @won = false
  end

  def play
    start
    5.times { @won == false ? guess_number : break }
    finish
  end

  def start
    puts 'You have five chances to guess my number!'
    print 'Guess a number between 1 and 100 > '
  end

  def guess_number
    guess = gets.to_i
    case
    when guess == @number
      @won = true
    when guess > @number
      puts 'Too high'
    when guess < @number
      puts 'Too low'
    end
  end

  def finish
    if @won == true
      puts 'You win!'
    else
      puts "You lose, the number was #{@number}"
    end
  end
end

game = GuessingGame.new
game.play
