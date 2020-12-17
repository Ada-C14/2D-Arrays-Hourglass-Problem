def hourglass(matrix)
  row1 = 0
  row2 = 1
  row3 = 2

  max_sum = -1.0 / 0.0

  while row3 < 6
    top_bottom_col = 0
    middle_col = 1
    while top_bottom_col + 2 < 6
      sum = matrix[row1][top_bottom_col..top_bottom_col + 2].sum + matrix[row2][middle_col] + matrix[row3][top_bottom_col..top_bottom_col + 2].sum

      if sum > max_sum
        max_sum = sum
      end

      top_bottom_col += 1
      middle_col += 1
    end

    row1 += 1
    row2 += 1
    row3 += 1
  end

  return max_sum
end
