
def hourglass(matrix)
  sum = -1.0/0
  row_start = 0
  column_start = 0

  while row_start < matrix.length - 2
    while column_start < matrix[0].length - 2
      hourglass = matrix[row_start][column_start..column_start + 2].sum
      hourglass += matrix[row_start + 1][column_start + 1]
      hourglass += matrix[row_start + 2][column_start..column_start + 2].sum

      sum = hourglass if hourglass > sum
      column_start += 1
    end
    row_start += 1
    column_start = 0
  end

  return sum
end