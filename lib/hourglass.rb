
def hourglass(matrix)
  rows = matrix.length
  columns = matrix[0].length
  start_row = 0
  start_column = 0
  high_sum = -63
  outer_counter = 1
  while start_row <= rows - 3
    counter = 1
    start_column = 0
    while start_column <= columns - 3
      score = hourglass_helper(matrix, start_column, start_row)
      high_sum = score if score > high_sum
      start_column += 1
      counter += 1
    end
    outer_counter += 1
    start_row += 1
  end
  return high_sum
end

def hourglass_helper(matrix, start_row, start_col)
  row1_sum = matrix[start_row][start_col] + matrix[start_row][start_col + 1] +
      matrix[start_row][start_col + 2]
  row2_sum = matrix[start_row + 1][start_col + 1]
  row3_sum = matrix[start_row + 2][start_col] + matrix[start_row + 2][start_col + 1] +
      matrix[start_row + 2][start_col + 2]

  return row1_sum + row2_sum + row3_sum
end