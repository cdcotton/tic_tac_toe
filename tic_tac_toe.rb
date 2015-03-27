# Represents a Tic-Tac-Toe board with a grid system.
class Board
  attr_accessor :grid
  
  def initialize
    @grid = [[1, 2, 3],
             [4, 5, 6],
             [7, 8, 9]]    
  end
  
  def get_cell(x, y)
    grid[y][x]  
  end
  
  def mapping(cell)
    mapping = {
      '1' => get_cell(0,0),
      '2' => get_cell(1,0),
      '3' => get_cell(2,0),
      '4' => get_cell(0,1),
      '5' => get_cell(1,1),
      '6' => get_cell(2,1),
      '7' => get_cell(0,2),
      '8' => get_cell(1,2),
      '9' => get_cell(2,2)
    }
    mapping.fetch(cell.to_s)
  end
  
  def display
    puts " #{get_cell(0, 0)} | #{get_cell(1, 0)} | #{get_cell(2, 0)} "
    puts " --+---+-- "
    puts " #{get_cell(0, 1)} | #{get_cell(1, 1)} | #{get_cell(2, 1)} "
    puts " --+---+-- "
    puts " #{get_cell(0, 2)} | #{get_cell(1, 2)} | #{get_cell(2, 2)} "
  end
end

board = Board.new
board.display
puts board.mapping(3)