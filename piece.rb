class Piece
    attr_reader :pos, :board, :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end
    
    def to_s
        "  #{symbol}  "
    end

    def empty?
    end

    def valid_moves
    end

    def pos=(val)
        x,y = val
        @pos = [x, y]
    end

    def symbol
    end

    private
    def move_into_check?(end_pos)
    end
end