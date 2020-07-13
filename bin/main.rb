# !/usr/bin/env ruby

puts 'Welcome to the awesome tic tac toe game implementation in ruby'

sleep 1

puts 'RULES FOR TIC-TAC-TOE'

sleep 2

puts "1. The game is played on a grid that's 3 squares by 3 squares."

sleep 2

puts '2. You are X, your friend is O. Players take turns putting their marks in empty squares.'

sleep 2

puts '3. The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.'

sleep 2

puts '4. When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie.'

print 'First player kindly enter your name :'

first_player = gets.chomp

print 'Second player kindly enter your name :'

second_player = gets.chomp

puts 'We would randomly select a player to start the game'

sleep 2

current_player = [first_player, second_player].sample

max_number_of_input = 9

selected_value_array = []
# win_scenario =  [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8],
#     [0, 3, 6],
#     [1, 4, 7],
#     [2, 5, 8],
#     [0, 4, 8],
#     [6, 4, 2]
#   ]

# first_player_array = []
# second_player_array = []

while max_number_of_input.positive?
  puts "#{current_player} enter a random number between 1-9"
  value = gets.chomp.to_i
  while (1..9).none?(value)
    puts ' kindly input a number between 1 - 9'
    value = gets.chomp.to_i
  end
  while selected_value_array.include?(value)
    puts "#{value} as already been selected, kindly select another value"
    value = gets.chomp.to_i
  end
  # if win_scenario.include?(first_player_array)
  # puts "#{first_player} WINS!!!"
  #   break
  # end

  # if win_scenario.include?(second_player_array)
  # puts "#{second_player} WINS!!!"
  #   break
  # end
  selected_value_array.push(value)
  max_number_of_input -= 1
  current_player = current_player == first_player ? second_player : first_player


#   puts "It is a draw!!!" if max_number_of_input == 0
 
end

