def hourglass(matrix)
    row = 0
    max_sum = -63

  while matrix[row + 2]
    column = 0
    while matrix[row][column + 2]
      current_sum = matrix[row][column] + matrix[row][column + 1] + matrix[row][column + 2] +
          matrix[row + 1][column + 1] +
          matrix[row + 2][column] + matrix[row + 2][column + 1] + matrix[row + 2][column + 2]

      max_sum = current_sum if current_sum > max_sum
      column += 1
    end
    row += 1
  end
  return max_sum
 end