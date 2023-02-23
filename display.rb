require "colorize"
require_relative "cursor.rb"
require "byebug"

class Display
    attr_accessor :cursor, :board
    def initialize(board)
        @cursor = Cursor.new([0,0], board)
        @board = board
        
    end

    def build_grid 
        # iterate over the board
        # look at each row with a helper fxn
        # return 2D array of colorized pieces
        new_arr = []
        (0..7).each do |i|
            arr = []
            (0..7).each do |j|
             
                color_options = colorize_square(i, j)
                current_piece =  @board.rows[i][j]
                arr << current_piece.to_s.colorize(color_options)
            end
            new_arr << arr
        end
    #    x
    #     .each do | row |
    #         arr = []
    #         row.each do |ele|
    #           arr << ele.symbol 
    #         end
    #         new_arr << arr
    #     end
     
        new_arr
        # @board.rows
       
    end

   

    def colorize_square(i, j)
        # checker the board 
        # if (i + j) is odd = :green
        # if (i + j) is even color = :light_yellow
        # if the cursor_pos == [i,j] need selected cursor = pink  vs unselected cursor = blue
        # x = i + j
        # puts x
        # if @cursor.cursor_pos == [i, j] && @cursor.selected
        #     bg = :pink
        
        # elsif @cursor.cursor_pos == [i, j] && !@cursor.selected
        #    bg = :blue
        # elsif (i + j).odd?
        #     bg  = :green
        # elsif (i + j).even?
          
        #     bg = :light_yellow
        # end
        {background: :green}
         
    end

    def render
        # clear the console
        # print the board by calling build_grid
        # iterate over and print each row with puts
        # display notifications
        # Process.clear

        build_grid

        

    end




    

end