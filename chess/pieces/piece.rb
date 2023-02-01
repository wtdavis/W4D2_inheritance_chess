require_relative "../board.rb"

class Piece 
    attr_accessor :color, :board, :pos

    def initialize(color, board, pos)
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
        true ### change to false later, and true for Nullpiece
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
        

end