
# time complexity: O(n*m)
# space complexity: O(1)
def hourglass(matrix)
  sum = -1.0/0
  top = 0
  left = 0

  while top < matrix.length - 2
    while left < matrix[0].length - 2
      hourglass = matrix[top][left] + matrix[top][left + 1] + matrix[top][left + 2]
      hourglass += matrix[top + 1][left + 1]
      hourglass += matrix[top + 2][left] + matrix[top + 2][left + 1] + matrix[top + 2][left + 2]

      sum = hourglass if hourglass > sum
      left += 1
    end
    top += 1
    left = 0
  end

  return sum
end