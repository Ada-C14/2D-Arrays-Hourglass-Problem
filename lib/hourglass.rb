def hourglass(matrix)
  i = 0 # row
  j = 0 # column

  last_column = matrix[i].length - 1
  last_row = last_column

  while (i + 2) <= last_row
    while (j + 2) <= last_column
      current_sum = 0

      current_sum = matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] # top of hourglass
      current_sum += matrix[i+1][j+1] # middle of hourglass
      current_sum += matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2] # bottom of hourglass

      max_sum = current_sum if max_sum.nil? || current_sum > max_sum
      
      j += 1
    end

    i += 1
    j = 0
  end

  return max_sum
end