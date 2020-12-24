
def hourglass(matrix)
  row = 1
  column = 1
  max = nil
  while row <= 4
    while (column >= 1 && column <= 4)
      sum = matrix[row][column] + matrix[row - 1][column - 1] + matrix[row - 1][column] + matrix[row - 1][column + 1] + matrix[row + 1][column - 1] + matrix[row + 1][column] + matrix[row + 1][column + 1]
      if (max == nil || sum > max)
        max = sum
      end
      column += 1
    end
    if column == 5
      column = 1
    end
    row += 1
  end
  return max
end