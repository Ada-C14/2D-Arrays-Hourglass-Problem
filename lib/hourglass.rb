# Time Complexity - O(1) because matrix is fixed and there's a fixed number of iterations.
# Space Complexity - O(1)

def hourglass(matrix)
  max_sum = -Float::INFINITY
  row_length = matrix.length
  col_length = matrix[0].length

  (row_length - 2).times do |row|
    (col_length - 2).times do |col|
      current_sum = 0

      (0..2).each do |i|
        current_sum += matrix[row][col + i] # sum top of hourglass
        current_sum += matrix[row + 2][col + i] # sum bottom of hourglass
      end

      current_sum += matrix[row + 1][col + 1] # sum middle of hourglass

      if current_sum > max_sum
        max_sum = current_sum
      end
    end
  end

  return max_sum
end