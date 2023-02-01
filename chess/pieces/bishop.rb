require_relative "../modules/slideable.rb"
require_relative "piece"

class Bishop < Piece
    include Slideable

    def move_dirs
        diagonal_dirs
    end

end

