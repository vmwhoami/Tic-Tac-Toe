#!/usr/bin/env ruby

require_relative '../lib/board'
require_relative '../lib/game_logic'

game_validation = GameLogic.new

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

game_board = Board.new(first_player, second_player)

puts 'We would randomly select a player to start the game'

sleep 2

current_player = game_validation.random_player(first_player, second_player)

def player_move(current_player, game, board)
  puts board.display_board
  puts "#{current_player} enter a random number between 1-9"
  value = gets.chomp.to_i
  until game.valid_input?(value)
    puts ' kindly input a number between 1 - 9 and make sure it has not been selected'
    value = gets.chomp.to_i
  end
  game.update_sel_val_array(value)
  board.update_board(current_player, value)
end

until game_board.board_slot_completed?
  player_move(current_player, game_validation, game_board)
  if game_board.win?
    puts game_board.display_board
    return puts "#{current_player} has won"
  end
  game_board.highest_turns -= 1
  current_player = current_player == first_player ? second_player : first_player
end

if game_board.board_slot_completed?
  puts game_board.display_board
  puts 'it is a draw'
end
