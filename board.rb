require_relative "piece.rb"
require_relative "rook.rb"
require_relative "king.rb"
require_relative "knight.rb"
require_relative "pawn.rb"
require_relative "queen.rb"
require_relative "bishop.rb"
require_relative "null_piece.rb"

class Board
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        (0..7).each do |i|
            (0..7).each do  |j|
                if (i == 0 && j == 0) || (i == 0 && j == 7) 
                    @rows[i][j] = Rook.new("white", self, [i, j])
                elsif (i == 7 && j == 0) || (i == 7 && j == 7) 
                    @rows[i][j] = Rook.new("black", self, [i, j])
                elsif (i == 0 && j == 1) || (i == 0 && j == 6) 
                    @rows[i][j] = Bishop.new("white", self, [i, j])
                elsif (i == 7 && j == 1) || (i == 7 && j == 6) 
                    @rows[i][j] = Bishop.new("black", self, [i, j])
                elsif (i == 0 && j == 2) || (i == 0 && j == 5) 
                    @rows[i][j] = Knight.new("white", self, [i, j])
                elsif (i == 7 && j == 2) || (i == 7 && j == 5) 
                    @rows[i][j] = Knight.new("black", self, [i, j])
                elsif (i == 0 && j == 3) 
                    @rows[i][j] = Queen.new("white", self, [i, j])
                elsif  (i == 7 && j == 3)
                    @rows[i][j] = Queen.new("black", self, [i, j])
                elsif (i == 0 && j == 4) 
                    @rows[i][j] = King.new("white", self, [i, j])
                elsif  (i == 7 && j == 4)
                    @rows[i][j] = King.new("black", self, [i, j])

                elsif (i == 1 && j <= 7) 
                    @rows[i][j] = Pawn.new("white", self, [i, j])
                elsif  (i == 6 && j <= 7)
                    @rows[i][j] = Pawn.new("black", self, [i, j])
                else 
                    @rows[i][j] = NullPiece.instance
                end
            end
        end
    end

    def move_piece(start_pos, end_pos)
        x, y = start_pos
        a, b = end_pos
        if @rows[x][y] == NullPiece.instance
            raise "There is not piece in this location."
        elsif @rows[a][b] != NullPiece.instance
            raise "There is a piece here. Make other move."
        else
            piece =  @rows[x][y]
            @rows[x][y] = NullPiece.instance
            @rows[a][b] = piece
        end
    end
end
