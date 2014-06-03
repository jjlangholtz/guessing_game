class Game
  def initialize
    @possibilities = (1..100).to_a
    @won = false
  end

  def play
    start
    5.times do
      puts @guess
      feedback = gets.chomp
      if feedback == 'Right'
        @won = true
        break
      elsif feedback == 'Too high'
        @input = 'high'
        eliminate_possibilities(@guess, @input)
        new_guess
      elsif feedback == 'Too low'
        @input = 'low'
        eliminate_possibilities(@guess, @input)
        new_guess
      end
    end
  end

  def start
    puts 'The computer wants to challenge you to a guessing game!'
    print "Choose a number between 1-100 for the computer to try and guess > "
    @number = gets.chomp.to_i
    @guess = 50
  end

  def eliminate_possibilities(guess, input)
    if input == 'high'
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
end

game = Game.new
game.play
