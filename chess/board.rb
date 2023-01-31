#W4D2 board

require_relative "./piece.rb"

class Board

    def initialize
        @rows = []
        filled_cols =  [0, 1, 6, 7]
        (0..7).each do |col|
            if filled_cols.include?(col)
                @rows << Array.new(8){Piece.new}
            else
                @rows << Array.new(8)
            end
        end

            
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
        elsif self[end_pos] != nil
            raise "occupied"
        end

        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]


        # raise error if start_pos empty OR end_pos invalid
    end




end

# b = Board.new
# p b[[1,1]] = 5