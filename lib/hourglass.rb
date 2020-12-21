
def hourglass(matrix)
  sums =[]
  rows = (matrix.length) - 2
  columns = (matrix[0].length) - 2

  c = 0
  r = 0

  while r < rows
    while c < columns
      sums << matrix[r][c] + matrix[r][c+1] + matrix[r][c+2] + matrix[r+1][c+1] + matrix[r+2][c] + matrix[r+2][c+1] + matrix[r+2][c+2]
      c += 1
    end
    r += 1
    c = 0
  end



  return sums.max
end