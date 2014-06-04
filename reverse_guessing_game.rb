# Guessing game where user chooses a number 1 - 100, computer has 5 guesses
class ReverseGuessingGame
  def initialize
    @possibilities = (1..100).to_a
    @won = false
  end

  def play
    start
    5.times { @won == false ? game_round : break }
    finish
  end

  def start
    puts 'The computer wants to challenge you to a guessing game!'
    puts 'Tell the computer if it is [Right, Too low, Too high]'
    print 'Choose a number between 1-100 for the computer to try and guess > '
    @number = gets.to_i
    @guess = 50
  end

  def game_round
    puts @guess
    @feedback = gets.chomp
    user_input
    eliminate_possibilities(@guess, @input)
    new_guess
  end

  def user_input
    case
    when @feedback == 'Right'
      @won = true
    when @feedback == 'Too high'
      @input = :high
    when @feedback == 'Too low'
      @input = :low
    end
  end

  def eliminate_possibilities(guess, input)
    if input == :high
      @possibilities = @possibilities.delete_if { |number| number >= guess }
    else
      @possibilities = @possibilities.delete_if { |number| number <= guess }
    end
  end

  def new_guess
    total = @possibilities.count
    middle = total / 2
    @guess = @possibilities[middle]
  end

  def finish
    puts @won ? 'The computer chose your number!' : 'You stumped the computer!'
  end
end

game = ReverseGuessingGame.new
game.play
