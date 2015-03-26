# Represents a player in a Tic-Tac-Toe game.
# A player has a name and a sign (X or O).
class Player
  attr_reader :sign, :name
  def initialize(input)
    @sign = input.fetch(:sign)
    @name = input.fetch(:name)
  end
end
