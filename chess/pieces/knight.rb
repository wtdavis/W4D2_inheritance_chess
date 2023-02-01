# class Knight < Piece

#   def symbol
#     'K'.colorize(color)
#   end

# will find out more about colorize in the later sstages o fthe project
require_relative 'piece'
require_relative '../modules/steppable.rb'


class Knight < Piece
include Steppable
  def move_diffs
    output = []
    (-2..2).each do |x|
      (-2..2).each do |y|
        output << [x, y] if x**2 + y**2 == 5
      end
    end
    output
  end


end