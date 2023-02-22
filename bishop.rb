require_relative "slideable.rb"
require_relative "piece.rb"

class Bishop < Piece
    include Slideable
    def symbol
        :B
    end

    private
    def move_dirs
        DIAGONAL_DIRS
    end
end