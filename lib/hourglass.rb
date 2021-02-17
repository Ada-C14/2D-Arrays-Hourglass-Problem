# time complexity = O(n^2)
# space complexity = O(1)

def hourglass(matrix)
  sum = -100
  row = 1
  (matrix.length - 2).times do
    column = 1
    (matrix[0].length - 2).times do
      temp_sum = matrix[row][column] + matrix[row - 1][column - 1] + matrix[row - 1][column] + matrix[row - 1][column + 1] + matrix[row + 1][column - 1] + matrix[row + 1][column] + matrix[row + 1][column + 1]
      if sum < temp_sum
        sum = temp_sum
      end
      
      column += 1
    end

    row += 1
  end
  return sum

end