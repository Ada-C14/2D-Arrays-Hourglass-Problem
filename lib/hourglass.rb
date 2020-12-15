def hourglass(matrix)
  start = 0
  row = 3
  largest_sum = nil
  while row < matrix.length + 1
    col = 3
    while col < matrix[0].length + 1
      temp_sum = hourglass_helper(matrix[start...row], col)
      largest_sum = temp_sum if largest_sum.nil? || largest_sum < temp_sum 
      col += 1
    end
    start += 1
    row += 1
  end
  return largest_sum
end

def hourglass_helper(row, col)
  row0 = row[0][col-3...col].sum
  row1 = row[1][col-3...col][1]
  row2 = row[2][col-3...col].sum
  return row0 + row1 + row2
end