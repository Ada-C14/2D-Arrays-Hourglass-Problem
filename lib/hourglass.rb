# Time complexity: O(1)
# Space complexity: O(1)

def hourglass(matrix)
  max_sum = nil
  # shifts hourglass to the right
  # can use matrix.length - 2 instead of 4
  4.times do |i|
    # calculates sums vertically
    4.times do |j|
      # resets sum to zero
      hourglass_sum = 0
      3.times do |k|
        hourglass_sum += matrix[j][i + k]
        hourglass_sum += matrix[j + 2][i + k]
      end
      hourglass_sum += matrix[j + 1][i + 1]
      # hourglass sums can all be negative
      max_sum = hourglass_sum if max_sum.nil? || hourglass_sum > max_sum
    end
  end

  return max_sum
end