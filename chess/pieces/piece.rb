require_relative "../board.rb"

class Piece 
    attr_accessor :color, :board, :pos

    def initialize(color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos
    end


    # helps in rendering the board in the terminal
    def to_s
    end


    #checks if the space we're on is occupied by a piece (returns a boolean)
    #basically return true if piece is a Null Piece?
    def empty?
        return false
        ### change to false later, and true for Nullpiece
    end

    # this method below is contingent on check/checkmate. Don't mess with it until much later
    def valid_moves
    end

    def pos=(val)
        @pos = val
    end

    def symbol
        @symbol
    end
        
    def valid_indices?(x, y)
        return false if x < 0 || x > 7 || y < 0 || y > 7
        return true
    end

end