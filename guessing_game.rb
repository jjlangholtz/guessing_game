number = rand(100) + 1
won = false

puts 'You have five chances to guess my number!'
print 'Guess a number between 1 and 100 > '
guess = 0

5.times do
  guess = gets.chomp.to_i
  if guess == number
    won = true
    break
  elsif guess > number
    puts 'Too high'
  else
    puts 'Too low'
  end
end

if won == true
  puts 'You win!'
else
  puts "You lose, the number was #{number}"
end
