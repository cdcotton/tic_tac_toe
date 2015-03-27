# Represents a Tic-Tac-Toe board with a grid system.
class Board
  attr_accessor :grid
  
  def initialize
    @grid = [[nil, nil, nil],
             [nil, nil, nil],
             [nil, nil, nil]]    
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

  def win?(symbol)
    # Checks rows and columns for wins.
    for i in 0..2
      win = grid[i].all? { |cell| cell == symbol }
      return win if win
      win = grid.transpose[i].all? { |cell| cell == symbol }
      return win if win
    end
    
    # Checks diagonals for wins.
    [mapping(1), mapping(5), mapping(9)].all? { |cell| cell == symbol } \
    || [mapping(3), mapping(5), mapping(7)].all? { |cell| cell == symbol }
  end

  def game_over?
    for i in 0..2
      for j in 0..2
        return false if grid[i][j].nil?
      end
    end
    true
  end
end

class Player
  attr_accessor :name, :symbol
  def initialize(name = '', symbol = '')
    @name = name
    @symbol = symbol
  end
end

class Game
  attr_reader :player1, :player2, :board
  def initialize
    @board = Board.new
    @player1 = Player.new
    @player2 = Player.new
  end
  
  def play
    get_player_info
    
    
  end
  
  def get_player_info
    print 'Player 1, please enter your name: '
    player1.name = gets.chomp
    print 'Player 1, please enter your symbol: '
    player1.symbol = gets.chomp
    
    print 'Player 2, please enter your name: '
    player2.name = gets.chomp
    print 'Player 2, please enter your symbol: '
    player2.symbol = gets.chomp
  end
end

game = Game.new
game.play
