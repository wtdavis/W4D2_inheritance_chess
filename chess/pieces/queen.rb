require_relative "../modules/slideable.rb"
require_relative "piece.rb"
  
class Queen < Piece
  #unicode: U+2655 white, U+265B black
  include Slideable
  
  private

  def move_dirs
    horizontal_dirs + diagonal_dirs
  end

end