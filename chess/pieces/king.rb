require_relative '../modules/steppable.rb'
require_relative 'piece'

class King < Piece
# unicode U+2654 white, U+265A black
  include Steppable

  def move_diffs
    output = []
    (-1..1).each do |x|
      (-1..1).each do |y|
        output << [x, y] if x**2 + y**2 > 0
      end
    end
    output
  end

  


end