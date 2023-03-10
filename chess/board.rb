#W4D2 board

# require_relative "./pieces/piece.rb"
require_relative "./pieces/null_piece.rb"
require_relative "./pieces/bishop.rb"
require_relative "./pieces/rook.rb"
require_relative "./pieces/pawn.rb"
require_relative "./pieces/king.rb"
require_relative "./pieces/queen.rb"
require_relative "./pieces/knight.rb"

require "colorize"  

class Board 

    # Potentially use a proc to initialize the pieces into the board in rows 0,1,6,7
    def initialize
        @rows = []
        filled_rows =  [0, 7]
        pawn_rows = [1, 6]
        (0..7).each do |row|
            if row < 4
                color_chooser = "white"
            else
                color_chooser = "black"
            end
            subrow = []
            if filled_rows.include?(row)
                col = -1
                subrow << Rook.new(color_chooser, self, [row, col += 1])
                subrow << Knight.new(color_chooser, self, [row, col += 1])
                subrow << Bishop.new(color_chooser, self, [row, col += 1])
                subrow << King.new(color_chooser, self, [row, col += 1])
                subrow << Queen.new(color_chooser, self, [row, col += 1])
                subrow << Bishop.new(color_chooser, self, [row, col += 1])
                subrow << Knight.new(color_chooser, self, [row, col += 1])
                subrow << Rook.new(color_chooser, self, [row, col += 1])
            elsif pawn_rows.include?(row)
                (0..7).each do |col|
                    subrow << Pawn.new(color_chooser, self, [row, col])
                end
            else
                8.times do
                    subrow << NullPiece.instance
                    
                end 
            end
            @rows << subrow
        end

            # row 0, 7  do #0, -1  = rook
            #  1, -2  = knight
            #  etc
    
    

            
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
        if self[start_pos].empty?
            raise 'position is empty'
        elsif !self[end_pos].empty?
            raise "occupied"
        end

        unless self[start_pos].moves.include?(end_pos)
            raise "invalid move!"
        end

        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]

        self[end_pos].pos = end_pos


        # raise error if start_pos empty OR end_pos invalid
    end




end

# b = Board.new
# p b[[1,1]] = 5