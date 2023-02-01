require 'singleton'
require_relative 'piece'

class NullPiece < Piece
  include Singleton

  def initialize
    @symbol = ''
    super
  end

  def empty?
    return true
  end

end