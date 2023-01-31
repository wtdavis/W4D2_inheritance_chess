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

    def valid_pos?(pos)
        row, col = pos
        (0..7).include?(row) && (0..7).include?(col)
    end


    def move_piece(start_pos, end_pos)
        unless valid_pos?(start_pos) && valid_pos?(end_pos)
            raise 'invalid move'
        end

        # eventually change this from nil to .empty? after pieces are initialized into array
        if self[start_pos] == nil
            raise 'position is empty'
        end

        # raise error if start_pos empty OR end_pos invalid
    end




end

# b = Board.new
# p b[[1,1]] = 5