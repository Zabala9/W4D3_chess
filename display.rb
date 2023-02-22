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

    end

    def build_row(row, i)
        # map over every piece inside the row
        # colorize the piece with a helper function
        # return an array of colorized pieces


    end

    def colorize_square(i, j)
        # checker the board 
        # if (i + j) is odd = :green
        # if (i + j) is even color = :light_yellow
        # if the cursor_pos == [i,j] need selected cursor = pink  vs unselected cursor = blue


    end

    def render

        # clear the console
        # print the board by calling build_grid
        # iterate over and print each row with puts
        # display notifications




        @cursor.get_input

    end




    

end