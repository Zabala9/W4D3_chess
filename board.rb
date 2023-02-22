require_relative "piece.rb"
require_relative "null_piece.rb"

class Board
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        (0..7).each do |i|
            (0..7).each do  |j|
                if i == 0 || i == 1 
                    @rows[i][j] = Piece.new("white", "board", [i, j])

                elsif  i == 6 || i == 7
                    @rows[i][j] = Piece.new("black", "board", [i, j])
                # else 
                #     @rows[i][j] = NullPiece.new
                end
            end

        end
        

    end

    def move_piece(start_pos, end_pos)
    end
end