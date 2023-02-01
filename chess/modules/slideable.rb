# instructions for move-dirs on the piece subclasses
# #returns the direcations in which a queen can move
# # a queen can move horizontally and diagonally

# return the sae idea for rooks/bishiops too

module Slideable

  HORIZONTAL_DIRS = [
    [-1, 0], #up
    [1, 0], #down
    [0, 1], #right
    [0, -1] #left
  ].freeze

    DIAGONAL_DIRS = [
    [-1, -1], #SW
    [-1, 1], #NW
    [1, -1], #SE
    [1, 1]   #NE
  ].freeze

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    moves_arr = []
    
    move_dirs.each do |dir|
      # example dir: [1, 1]
      dx, dy = dir
      p grow_unblocked_move_in_dir(dx, dy)
      moves_arr += grow_unblocked_move_in_dir(dx, dy)
    end
    moves_arr
  end
      
    
    # create array to collect moves

    #iterate over each of the directions to get all of the valid moves for each piece
    #very short method
      #use the Piece subclass '#move_dirs' method to get this info
      # for each direction, collect all posssible moves int hat direction
        # and add them to your moves array
        # (use the 'grow=unblocked_mvoes-in_dir helper method')

      
      # need to call this from the piece subclass within the moves method
      # # helps us determine if the piece moves horizontally/vertically/both

  private

  def move_dirs
    raise NotImplementedError
  end


  def grow_unblocked_move_in_dir(dx, dy)
    #keeps going in this direction and seeing if the move we want to attempt is valid
    output_arr = []
    current_pos = self.pos.dup
    current_pos[0] += dx
    current_pos[1] += dy
    
    x, y = current_pos
    # p x
    # p y
    # p self.board[current_pos].empty?
    while valid_indices?(x, y) && self.board[current_pos].empty?
      # p current_pos
      output_arr << current_pos.dup
      current_pos[0] += dx
      current_pos[1] += dy

      x, y = current_pos
    end
    output_arr
  end





  

end