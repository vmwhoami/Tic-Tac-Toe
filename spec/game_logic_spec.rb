require './lib/game_logic'

describe GameLogic do
  let(:first_player) { 'somoye' }
  let(:second_player) { 'somoye' }
  let(:game_validation) { GameLogic.new }
  describe '#random_player' do
    it 'select randomly one of it arguments' do
      expect(game_validation.random_player(first_player, second_player)).to be == first_player || second_player
    end
  end
  describe '#valid_input?' do
    it 'checks if argument is a valid input and not yet selected' do
      expect(game_validation.valid_input?(2)).to be == true || false
    end
  end
  describe '#update_sel_val_array' do
    it 'should add it argument to selected_value_array' do
      game_validation.update_sel_val_array(3)
      expect(game_validation.selected_value_array).to include 3
    end
  end
end
