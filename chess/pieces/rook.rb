require_relative "../modules/slideable.rb"
require_relative "piece"

class Rook < Piece
    include Slideable
    def move_dirs
        horizontal_dirs
    end


end
