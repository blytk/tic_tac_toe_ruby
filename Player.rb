# Player is initialized with a number and a symbol
class Player
  attr_accessor :number, :picks

  def initialize(number, player_symbol)
    @number = number
    @picks = []
    @player_symbol = player_symbol
  end

  # Pick a square, if empty, update with player symbol
  def pick_square(row, col, board_obj)
    green_light = false
    while green_light != true
      # prompt
      player_x = nil
      while player_x < 0 || player_x > 2
        puts "Pick a square row between 0 and 2 (x coordinate)"
        player_x = gets.chomp
        
        if player_x == nil
          continue
        else
          player_x = player_x.to_i
        end
      end

      player_y = nil
      while player_y < 0 || player_x > 2
        puts "Pick a square column between 0 and 2 (y coordinate)"
        player_y = gets.chomp

        if player_y == nil
          continue
        else
          player_y = player_y.to_i
        end
      end  
    end
    
    # call Board.update_board. If return value is true, Board will update the grid
    if board_obj.update_board(player_x, player_y, player_symbol) == true
      green_light = true
    else 
      # while loop will continue reprompting until an empty square is found
      green_light = false
    end
  end
end