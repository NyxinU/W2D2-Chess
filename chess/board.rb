require_relative 'piece.rb'
require_relative 'display.rb'

class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    populate

  end

  def populate
    arr = [0,1,6,7]

      arr.each do |num|
      @grid[num].length.times do |i|
        @grid[num][i] = Rook.new([num,i])
      end
    end
  end

  def move_piece(start_pos, end_pos)
    # if start_pos.nil? || !piece.available_moves.end_pos
    #   raise "Invalid move"
    # else
      # piece.current_pos = end_pos
      # @grid[end_pos] = peice
      # @grid[start_pos] = nil
      if self[start_pos].moves.include?(end_pos)
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
        self[end_pos].current_pos = end_pos
      else
        raise "you goofed"
      end
    end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

end
