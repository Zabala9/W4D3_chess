require "singleton"
require "colorize"

class NullPiece < Piece
    include Singleton

    def initialize
    end

    def moves
    end

    def symbol
        :Nu
    end
end
