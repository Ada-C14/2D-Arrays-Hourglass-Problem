# Time complexity: O(1)
# Space complexity: O(1)

def hourglass(matrix)
  max_sum = nil
  # shifts hourglass to the right
  (matrix.length - 2).times do |col|
    # calculates sums vertically
    (matrix.length - 2).times do |row|
      # resets sum to zero
      hourglass_sum = 0
      3.times do |i|
        hourglass_sum += matrix[row][col + i]
        hourglass_sum += matrix[row + 2][col + i]
      end
      hourglass_sum += matrix[row + 1][col + 1]
      # hourglass sums can all be negative
      max_sum = hourglass_sum if max_sum.nil? || hourglass_sum > max_sum
    end
  end

  return max_sum
end