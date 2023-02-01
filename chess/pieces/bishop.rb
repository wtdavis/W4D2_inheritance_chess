require_relative "../modules/slideable.rb"
require_relative "piece"

class Bishop < Piece
    #unicode U+2657	 white, U+265D black
    include Slideable

    def move_dirs
        diagonal_dirs
    end

end

