# Represents a cell in a Tic-Tac-Toe grid.
class Cell
  attr_accessor :value
  def initialize(value = '')
    @value = value
  end
end
