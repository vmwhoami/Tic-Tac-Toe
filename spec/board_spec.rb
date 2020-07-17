require './lib/board'

describe Board do
  let(:first) { 'somoye' }
  let(:second) { 'nusret' }
  let(:board) { Board.new(first, second) }
  describe '#seperator' do
    it 'returns a string with the current items in the board' do
      expect(board.display_board).to be_a(String)
    end
  end

  describe '#update_board' do
    it 'updates the board position with the given player tag' do
      board.update_board(first, 3)
      expect(board.board[2]).to be == 'x'
    end

    it 'updates the board position with the given player tag' do
      board.update_board(second, 5)
      expect(board.board[4]).to be == 'o'
    end
  end

  describe '#win?' do
    it 'returns true if a win case occurs' do
      expect(board.win?).to be == false
    end

    it 'returns true if a win case occurs' do
      board.board[0] = 'x'
      board.board[1] = 'x'
      board.board[2] = 'x'
      expect(board.win?).to be == true
    end
  end

  describe '#board_slot_completed?' do
    it 'returns false until a maximum of 9 plays' do
      expect(board.board_slot_completed?).to be == false
    end
    it 'returns true after a maximum of 9 plays' do
      board.highest_turns = 0
      expect(board.board_slot_completed?).to be == true
    end
  end
end
