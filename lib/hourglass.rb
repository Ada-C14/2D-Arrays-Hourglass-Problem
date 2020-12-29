# INFO:
# We have a 6x6 matrix
# hourglass is ( 3 at top row, middle element on 2nd row and 3 at bottom row)
# calculate each hourglass sum
# return the max hourglass sum

#PSEUDOCODE:
# initialize hourglass_sum array to keep track of sum of each hourglass
# set row/column variables to 0(index)
# calculate all hourglasses total for each
# 16 hourglasses total

def hourglass(matrix)
  # raise NotImplementedError, "The matrix method has not been implemented yet!"
  hourglass_sum = []
  row = 0
  4.times do
    col = 0
    4.times do
      hourglass_sum.push(matrix[row][col] + matrix[row][col + 1] + matrix[row][col + 2] + matrix[row + 1][col + 1] + matrix[row + 2][col] + matrix[row + 2][col + 1] + matrix[row + 2][col + 2])# calculates sum for hourglass
      col += 1 #increment and shift start of column by one
    end
    row += 1 #increment and bump down to next row
  end
  return hourglass_sum.max # returns the max from all hourglass
end