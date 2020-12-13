

def sum_top_hourglass_row(matrix, starting_row, starting_col)
  return matrix[starting_row][starting_col] + matrix[starting_row][starting_col + 1] + matrix[starting_row][starting_col + 2]
end

def sum_middle_hourglass_row(matrix, starting_row, starting_col)
  return matrix[starting_row + 1][starting_col + 1]
end

def sum_bottom_hourglass_row(matrix, starting_row, starting_col)
  return sum_top_hourglass_row(matrix, starting_row + 2, starting_col)
end

def hourglass_sum(matrix, starting_row, starting_col)
  # sum top row
  sum = sum_top_hourglass_row(matrix, starting_row, starting_col)
  sum += sum_middle_hourglass_row(matrix, starting_row, starting_col)
  sum += sum_bottom_hourglass_row(matrix, starting_row, starting_col)

  return sum
end

def hourglass(matrix)
  hourglass_sums = {}
  starting_row = 0
  starting_col = 0

  while starting_row < matrix.length - 2

    while starting_col < matrix[0].length - 2
      hourglass_sums[ [starting_row, starting_col]  ] = hourglass_sum(matrix, starting_row, starting_col)
      starting_col += 1
    end
    starting_col = 0
    starting_row += 1
  end

  return hourglass_sums.values.max
end