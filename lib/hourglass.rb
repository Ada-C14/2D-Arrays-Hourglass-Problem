
def hourglass_sum(matrix)
  # raise NotImplementedError, "The matrix method has not been implemented yet!"
  max = -Float::INFINITY
  (0..3).each do |row|
    (0..3).each do |col|
      sum = (matrix[row][col] + matrix[row][col + 1] + matrix[row][col + 2] + matrix[row + 1][col + 1] + matrix[row + 2][col] + matrix[row + 2][col + 1] + matrix[row + 2][col + 2])
      max = sum if sum > max
    end
  end
  return max
end