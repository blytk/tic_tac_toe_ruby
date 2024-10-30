require_relative "Board"
require_relative "Player"

# create Board
board = Board.new

# create Players
player1 = Player.new(1, "X")
player2 = Player.new(2, "O")

# Game start
# Game goes until the board is full (loop) or a player wins (explicit return)

game_over = false
while game_over == false
  board.display_board
  player1.pick_square(board)
  board.display_board
  if board.winner?
    puts "---------------"
    puts "Player 1 wins"
    puts "---------------"
    break
  end
  if board.board_full?
    game_over = true
    puts "---------------"
    puts "Draw"
    puts "---------------"
    break
  end
  player2.pick_square(board)
  board.display_board
  if board.winner?
    puts "---------------"
    puts "Player 2 wins"
    puts "---------------"
    break
  end
  if board.board_full?
    game_over = true
    puts "Draw"
    break
  end
end


# test_grid = [[nil, nil, nil],["x" , "x", "o"],["o" , "o", "x"]]