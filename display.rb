require "colorize"
require_relative "board.rb"
require_relative "cursor.rb"

class Display
    def initialize(board)
        @cursor = Cursor.new([0,0], board)
        
    end

    def build_grid 
        # iterate over the board
        # look at each row with a helper fxn
        # return 2D array of colorized pieces

        (0..7).each do |i|
            (0..7).each do |j|
                colorize_square(i, j)
            end
        end

        board
    end

    # def build_row(row, pos_row)
    #     # map over every piece inside the row
    #     # colorize the piece with a helper function
    #     # return an array of colorized pieces

    #     row.map do |square|
    #         colorize_square()
    #     end

    # end

    def colorize_square(i, j)
        # checker the board 
        # if (i + j) is odd = :green
        # if (i + j) is even color = :light_yellow
        # if the cursor_pos == [i,j] need selected cursor = pink  vs unselected cursor = blue

        if (i + j).odd?
            board[i][j] = :green
        elsif (i + j).even?
            board[i][j] = :light_yellow
        elsif @cursor_pos == [i, j] && @cursor_pos.selected
            board[i][j] = :pink
        elsif @cursor_pos == [i, j] && !@cursor_pos.selected
            board[i][j] = :blue
        end

    end

    def render
        # clear the console
        # print the board by calling build_grid
        # iterate over and print each row with puts
        # display notifications
        Process.clear

        build_grid

    end




    

end