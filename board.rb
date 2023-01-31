#W4D2 board

require_relative "./piece.rb"

class Board

    def initialize
        @rows = Array.new(8){Array.new(8)}
        #@null_piece stuff 


    end


    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @rows[row][col]= value
    end


end

# b = Board.new
# p b[[1,1]] = 5