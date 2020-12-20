# time complexity: O(nm)
# space complexity: O(1)

def hourglass(matrix)
  max_sum = -63
  i = 0 # row
  j = 0 # column

  while i < matrix.length - 2
    while j < matrix[0].length - 2
      current_sum = matrix[i][j] + matrix[i][j + 1] + matrix[i][j + 2] +
                    matrix[i + 1][j + 1] +
                    matrix[i + 2][j] + matrix[i + 2][j + 1] + matrix[i + 2][j + 2]

      max_sum = current_sum if current_sum > max_sum
      j += 1
    end
    i += 1
    j = 0
  end
  return max_sum
end