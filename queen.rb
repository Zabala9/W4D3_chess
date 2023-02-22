require_relative "slideable.rb"
require_relative "piece.rb"

class Queen < Piece
    include Slideable
    def symbol
        :Q
    end

    private
    def move_dirs
        HORIZONTAL_VERTICAL_DIRS + DIAGONAL_DIRS

    end
end