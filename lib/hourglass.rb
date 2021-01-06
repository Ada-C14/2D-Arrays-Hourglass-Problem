
def hourglass(matrix)
  sums = []
  (0..3).each do |x|
    (0..3).each do |y|
      sums << (matrix[x][y] + matrix[x][y+1] + matrix[x][y+2] + matrix[x+1][y+1] + matrix[x+2][y] + matrix[x+2][y+1] + matrix[x+2][y+2])
    end
  end
  return sums.max
end