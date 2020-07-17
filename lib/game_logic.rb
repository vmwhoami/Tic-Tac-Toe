class GameLogic
  attr_reader :selected_value_array
  def initialize
    @selected_value_array = []
    @valid_input = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def random_player(first, second)
    [first, second].sample
  end

  def valid_input?(num)
    @valid_input.include?(num) && !@selected_value_array.include?(num) ? true : false
  end

  def update_sel_val_array(num)
    @selected_value_array << num
  end
end
