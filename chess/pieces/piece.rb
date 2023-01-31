class Piece 

    attr_accessor :color, :board, :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
    end

    def empty?
    end

    def valid_moves
        []
    end

    def pos=(val)
        @pos = val
    end

    def symbol
        @symbol
    end
        

end