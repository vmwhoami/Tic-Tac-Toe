class Board
    @@win_scenario =  [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [6, 4, 2]
      ]
    def initialize(first,second)
        @board = %w[1 2 3 4 5 6 7 8 9]
        @max_number_of_input = 9
        @first_player = first
        @second_player = second
    end

    def display_board
      separator = '|'
  
     puts "\n| #{@board[0]} #{separator} #{@board[1]} #{separator} #{@board[2]} |
       \n| #{@board[3]} #{separator} #{@board[4]} #{separator} #{@board[5]} |
       \n| #{@board[6]} #{separator} #{@board[7]} #{separator} #{@board[8]} | "
    end

    def update_board(current_player,option_selected)
    current_player == @first_player ? @board[option_selected - 1] = 'v' : @board[option_selected - 1] = 's'
    end
     
    def win?
    end

end


test = Board.new
test.display_board