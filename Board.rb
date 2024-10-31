# Board class: Board state, update board, display board
class Board
  attr_accessor :size, :grid

  def initialize()  
    @size = 3
    @grid = Array.new(self.size) {Array.new(self.size, " ")}
  end
  # Update board on coordinate row, col with symbol
  def update_board(row, col, symbol)
    # empty? true if square is available, false otherwise
    if self.grid[row][col] != "X" && self.grid[row][col] != "O"
      self.grid[row][col] = symbol
      return true
    else
      return false
    end
  end

  def board_full?    
    !self.grid.flatten.include?(" ")
  end

  def winner?
    winner = false
    # winning conditions
    @grid.each_with_index do |row, row_index|
      # entire row has the same symbol?
      if @grid[row_index][0] == @grid[row_index][1] && @grid[row_index][0] == @grid[row_index][2]
        if @grid[row_index][0] != " "
          winner = true
          return winner
        end
      end
    end
    # entire column has the same symbol?
    for i in 0..2
      if @grid[0][i] == @grid[1][i] && @grid[0][i] == grid[2][i] 
        if @grid[0][i] != " "
          winner = true
          return winner
        end
      end
    end

    # diagonal has the same symbol?
    if @grid[0][0] == @grid[1][1] && @grid[0][0] == @grid[2][2] ||  \
      @grid[2][0] == @grid[1][1] && @grid[2][0] == grid[0][2]
      if @grid[1][1] != " "
        winner = true
        return winner
      end
    end
      winner
  end
end


