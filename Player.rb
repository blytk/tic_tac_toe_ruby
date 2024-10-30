# Player is initialized with a number and a symbol
class Player
  attr_accessor :number, :picks

  def initialize(number, player_symbol)
    # player number (player1, player2)
    @number = number
    # picks will store successful pick attempts 
    @picks = []
    # player_symbol should be an x or an o
    @player_symbol = player_symbol
  end

  # Pick a square, if empty, update with player symbol
  def pick_square(board_obj)
    
    green_light = nil
    while green_light != true
      green_light = false
      # prompt
      player_x = -1
      while player_x < 0 || player_x > 2
        puts "Pick a row between 0 and 2 (x coordinate)"
        player_x = gets.chomp
        player_x = player_x.to_i
      end

      player_y = -1
      while player_y < 0 || player_y > 2
        puts "Pick a column between 0 and 2 (y coordinate)"
        player_y = gets.chomp
        player_y = player_y.to_i
      end  

      
    
    
      # call Board.update_board. If return value is true, Board will update the grid
      if board_obj.update_board(player_x, player_y, @player_symbol) == true
        green_light = true
        # successful pick, update picks array 
        @picks.push([player_x, player_y])
      else 
        # while loop will continue reprompting until an empty square is found
        green_light = false
      end
    end
  end
end