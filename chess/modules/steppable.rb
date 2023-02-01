# instructions for move-dirs on the piece subclasses
# #returns the direcations in which a queen can move
# # a queen can move horizontally and diagonally

# return the sae idea for rooks/bishiops too

module Steppable

  def moves
    moves_arr = []
    move_diffs.each do |diff|
      
      # example dir: [1, 1]
      dx, dy = diff
      moves_arr << [dx + pos[0], dy + pos[1]]
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

  def move_diffs
    raise NotImplementedError
  end

   






  

end