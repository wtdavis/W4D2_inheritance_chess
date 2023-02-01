require 'singleton'
require_relative 'piece'

class NullPiece < Piece
  include Singleton

  def initialize
    @color = nil
    @symbol = ''
  end

  def empty?
    return true
  end

end