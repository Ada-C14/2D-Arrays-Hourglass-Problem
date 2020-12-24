# Time Complexity: O(n^2) where n is size of nxn square - computes n^2 sums
# Space complexity: O(n^2) - sum array for each sum
def hourglass(matrix)
  hourglass_sums = []

  4.times do |row|
    4.times do |column|
      # Compute top row of hourglass
      sum = matrix[row][column] + matrix[row][column + 1] + matrix[row][column + 2]
      # Compute middle of hourglass
      sum += matrix[row + 1][column + 1]
      # Compute bottom row of hourglass
      sum += matrix[row + 2][column] + matrix[row + 2][column + 1] + matrix[row + 2][column + 2]
      # Add sum to array
      hourglass_sums += [sum]
    end
  end

  return hourglass_sums.max
end