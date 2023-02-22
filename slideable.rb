module Slideable
    HORIZONTAL_VERTICAL_DIRS = [
        [0,1],
        [0,-1],
        [-1,0],
        [1,0]

    ]
    DIAGONAL_DIRS = [
        [1,1],
        [-1,-1],
        [-1,1],
        [1,-1]
    ]

    def horizontal_dirs
        HORIZONTAL_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        all_moves = []
        
    end

    private
    def moves_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
    end
end