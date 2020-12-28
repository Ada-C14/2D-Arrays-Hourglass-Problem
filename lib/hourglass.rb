def hourglass(matrix)
  raise ArgumentError, "Invalid matrix" if matrix.nil?

  hg_sums = [] # collect each hourglass sum
  row_i = 0 # track row index
  col_i = 0 # track column index

  until hg_sums.size == 16 # hit 16 at the last hourglass

    hg_sums << (matrix[row_i][col_i] + matrix[row_i][col_i+1] + matrix[row_i][col_i+2] +
        matrix[row_i+1][col_i+1] +
        matrix[row_i+2][col_i] + matrix[row_i+2][col_i+1] + matrix[row_i+2][col_i+2])

    col_i += 1 # the column index should increment 4x on each row

    if col_i > 3 # get to the end of the row
      col_i = 0 # reset column index
      row_i += 1 # shift down to next row (so we start adding from the next top left corner)
    end
  end

  return hg_sums.max
end

# matrix = [[1,1,1,0,0,0], #row_index => 0
#           [0,1,0,0,0,0], #row_index => 1
#           [1,1,1,0,0,0], #row_index => 2
#           [0,0,2,4,4,0],
#           [0,0,0,2,0,0],
#           [0,0,1,2,4,0]]


#notes: will always be 6x6 array

#Pseudocode:
  #find each hourglass
  #calculate and store each sum in an array
  #return highest value in that array (holding each hourglass sum)

