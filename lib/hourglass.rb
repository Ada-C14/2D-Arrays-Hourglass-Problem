
def hourglass(matrix)
  max = -100
  for row in (0..3) do
    for col in (0..3) do
      sum = matrix[row][col] + matrix[row][col + 1] + matrix[row][col + 2] + matrix[row + 1][col + 1] + matrix[row + 2][col] + matrix[row + 2][col + 1] + matrix[row + 2][col + 2]
      if sum > max
        max = sum
      end
    end
  end
  return max
end