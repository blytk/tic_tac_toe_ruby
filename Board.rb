# Board class: Board state, update board, display board
class Board
  attr_accessor :size, :grid

  def initialize()  
    @size = 3
    @grid = Array.new(self.size) {Array.new(self.size)}
  end
  # Update board on coordinate row, col with symbol
  def update_board(row, col, symbol)
    self.grid[row][col] = symbol
  end
  # Display entire board with current state
  def display_board
    self.grid.each_with_index do |row, row_index|
      row.each_with_index do |col, col_index|
        print self.grid[row_index][col_index]
      end
      puts
    end
  end
end

board = Board.new()

=begin
test_grid = [
  [nil, nil, nil],
  ["x" , "x", "o"],
  ["o" , "o", "x"]
]


test_grid.each_with_index do |row, row_index|
  row.each_with_index do |col, col_index|
    board.update_board(row_index, col_index, test_grid[row_index][col_index])
  end
end

=end
board.display_board()

