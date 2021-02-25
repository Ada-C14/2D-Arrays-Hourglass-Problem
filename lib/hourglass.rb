# matrix = [
#   [1, 1, 1, 0, 0, 0],
#   [0, 1, 0, 0, 0, 0],
#   [1, 1, 1, 0, 0, 0],
#   [0, 0, 0, 0, 0, 0],
#   [0, 0, 0, 0, 0, 0],
#   [0, 0, 0, 0, 0, 0],
# ]

def hourglass(matrix)
  # # raise NotImplementedError, "The matrix method has not been implemented yet!"
  max = nil
  matrix.each_with_index do |row, i|
    if i <= 3 
      row.each_with_index do |col, j|
        if j <= 3
          temp = hourglass_sum(matrix, i, j)
          # puts i
          # puts j
          # puts temp
          if max == nil || temp > max
            max = temp
          end
        end
      end
    end

  end
  return max
end


def hourglass_sum(matrix, row, col)
  # whole matrix start @: row=0, col=0 
              # end @: row=3, col=3  
  # Starts from top left
  return matrix[row][col] +
  matrix[row][col + 1] +
  matrix[row][col + 2] +
  matrix[row + 1][col + 1] +
  matrix[row + 2][col] +
  matrix[row + 2][col + 1] +
  matrix[row + 2][col + 2]
end


  # Count I (hourglass) shapes
  # Calculate and sum all
  # matrix[d] = d
  # search row -1, co; -1 = a/ 0 = b, row-1, +1 = c
  # search row +1 = e/ 0 = f, +1 = g

  # # This sums from the center
  # return matrix[row][col] +
  #   matrix[row - 1][col - 1] +
  #   matrix[row - 1][col] +
  #   matrix[row - 1][col + 1] +
  #   matrix[row + 1][col - 1] +
  #   matrix[row + 1][col] +
  #   matrix[row + 1][col + 1]
# find the sum 
# find the centers
# find the max