class Piece
  def initialize
    # @current_pos = start_pos
    # @color = nil
  end

  # def moves
  #   self.valid_moves
  # end



end


module SlidingPiece
  ORTHOGONAL = {
    left: [0, -1],
    right: [0, 1],
    up: [-1, 0],
    down: [1, 0]
  }

  # def moves
  # end
  #
  # def move_dirs
  #
  # end

  def orthogonal_dirs
    ORTHOGONAL.values.map do |arr|
      [@current_pos[0] + arr[0],@current_pos[1] + arr[1]]
    end
  end

  def diagonal_dirs
  end

  def grow_unblocked_moves_in_dir(dx, dy)
  end
end

class Rook < Piece
  include SlidingPiece
  attr_accessor :current_pos 

  def initialize(pos)
    @current_pos = pos
  end

  def symbol
  end

  def move_dirs
  end

  def moves
    orthogonal_dirs
  end

end
