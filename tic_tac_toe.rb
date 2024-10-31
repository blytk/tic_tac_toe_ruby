require_relative "Board"
require_relative "Player"
require_relative "Display"

# create Board
board = Board.new

# create Players
player1 = Player.new(1, "X")
player2 = Player.new(2, "O")

# players array for iteration
players = [player1, player2]

# game loop
def game_loop(players, board)
  game_over = false
  Display.display_board(board)
  while game_over == false
    players.each do |player|
      player.pick_square(board, player)
      Display.display_board(board)
      if board.winner?
        game_over = true
        Display.display_message("Player #{player.number} wins")
        # When player wins, return his picks
        return player.picks
      end
      if board.board_full?
        game_over = true
        Display.display_message("Draw")
        return "Draw"
      end
    end
  end
end

# Game start
game_loop(players, board)