class GameLogic
    def initialize
        @selected_value_array = []
        @valid_input =  %w[1 2 3 4 5 6 7 8 9]
    end

    def random_player(first,second)
        [first, second].sample
    end

    def valid_input?(num)
        @valid_input.include?(num) && !@selected_value_array.include?(num)
    end
 
    def update_sel_val_array(num)
        @selected_value_array << num
    end
end