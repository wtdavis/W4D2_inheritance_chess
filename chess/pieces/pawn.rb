require_relative "piece"

class Pawn < Piece

    def moves
        moves_arr = []
        x, y = pos
        forward_steps.each do |step|
            moves_arr << [x + step[0], y + step[1]]
        end
        moves_arr
    end
    
    private

    def at_start_row?
        if pos[0] == 1 && color == "white"
            return true
        elsif pos[0] == 6 && color == "black"
            return true
        else
            return false
        end    
    end

    def forward_dir
        if color == "white"
            return 1
        else
            return -1
        end
    end

    def forward_steps
        output = []
        if at_start_row? 
            output << [forward_dir, 0]
            output << [forward_dir * 2, 0]
        else
            output << [forward_dir, 0]
        end
        output
    end

    def side_attacks
        output = []
        output << [forward_dir, -1]
        output << [forward_dir, 1]
        output
    end

end

