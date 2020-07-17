class Board
  attr_accessor :highest_turns, :board

  def initialize(first, second)
    @board = %w[1 2 3 4 5 6 7 8 9]

    @highest_turns = 9

    @first_player = first

    @second_player = second

    @win_scenario = [

      [0, 1, 2],

      [3, 4, 5],

      [6, 7, 8],

      [0, 3, 6],

      [1, 4, 7],

      [2, 5, 8],

      [0, 4, 8],

      [6, 4, 2]

    ]
  end

  def display_board
    separator = '|'

    "\n| #{@board[0]} #{separator} #{@board[1]} #{separator} #{@board[2]} |

       \n| #{@board[3]} #{separator} #{@board[4]} #{separator} #{@board[5]} |

       \n| #{@board[6]} #{separator} #{@board[7]} #{separator} #{@board[8]} |
       \n "
  end

  def update_board(current_player, board_number)
    @board[board_number - 1] = current_player == @first_player ? 'x' : 'o'
  end

  def win?
    @win_scenario.each do |win_array|
      first_index = win_array[0]

      second_index = win_array[1]

      third_index = win_array[2]

      return true if @board[first_index] == @board[second_index] && @board[first_index] == @board[third_index]
    end

    false
  end

  def board_slot_completed?
    @highest_turns < 1
  end
end
