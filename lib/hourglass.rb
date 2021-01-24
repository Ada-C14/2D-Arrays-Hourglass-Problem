
def hourglass(matrix)
  max_sum = -1.0/0.0
  row = 0
  col = 0

  while row < matrix.length - 2

    while col < matrix[0].length - 2
      current_sum = matrix[row][col] + matrix[row][col + 1] + matrix[row][col + 2] + matrix[row + 1][col + 1] +
          matrix[row + 2][col] + matrix[row + 2][col + 1] + matrix[row + 2][col + 2]

      max_sum = current_sum if current_sum > max_sum

      col += 1
    end
    row += 1
    col = 0
  end
  return max_sum
end