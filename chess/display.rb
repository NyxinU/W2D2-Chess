require "colorize"
require_relative "board.rb"
require_relative "cursor.rb"
class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def render
    while true
      system("clear")
      @board.grid.each_with_index do |arr, row|
        arr.each_with_index do |el, col|
          if @cursor.cursor_pos == [row, col]
            print "|"
            if @cursor.selected
              print "  ".colorize(background: :red)
            else
              print "  ".colorize(background: :blue)
            end
          else
          if el.nil?
            print "|  "
          else
            print "|♜ "
          end
          end
        end
        puts "|"
      end
      print @cursor.start_pos
      print @cursor.end_pos
      @cursor.get_input

    end
  end
end

if __FILE__ == $PROGRAM_NAME
  b = Board.new()
  d = Display.new(b)
  d.render
end
