
def hourglass(matrix)
  # i is top left row coordinate
  # j is top left column coordinate

  max_sum = (-1.0 / 0.0)
  i = 0

  until (i + 2) == (matrix.length) do
    j = 0
    until (j + 2) == (matrix[0].length) do
      if  (matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] + matrix[i+1][j+1] + matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]) > max_sum
        max_sum = matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] + matrix[i+1][j+1] + matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]
      end
      j += 1
    end
    i += 1
  end

  return max_sum
end