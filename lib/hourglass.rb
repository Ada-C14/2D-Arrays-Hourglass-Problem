
def hourglass(matrix)
  max_hourglass_sum = - 1.0/0
  max_iteration_count = matrix.length - 2 # assuming this only works because matrix is even

  row_base = 0
  col_base = 0

  while row_base < max_iteration_count
    4.times do |i|
      row_one_sum = matrix[row_base][i..i + 2].sum
      row_two_sum = matrix[row_base + 1][i + 1]
      row_three_sum = matrix[row_base + 2][i..i + 2].sum

      hourglass_sum = row_one_sum + row_two_sum + row_three_sum

      if hourglass_sum > max_hourglass_sum
        max_hourglass_sum = hourglass_sum
      end

      col_base += 1
    end
    row_base += 1
    col_base = 0
  end
  return max_hourglass_sum
end