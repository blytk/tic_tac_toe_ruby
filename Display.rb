# Display class for printing to the terminal
class Display
  def self.display_message(message)
    puts ""
    puts "+++++++++++++++"
    puts "#{message}"
    puts "+++++++++++++++"
    puts ""
  end

  def self.display_board(board)
      # Display entire board with current state
      puts "-------------"
      board.grid.each_with_index do |row, row_index|
        print "| "
        row.each_with_index do |col, col_index|
          print board.grid[row_index][col_index]
          print " | "
        end
        puts ""
        puts "-------------"
    end
  end
end