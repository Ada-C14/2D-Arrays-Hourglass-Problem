
def hourglass(matrix)
  # raise NotImplementedError, "The matrix method has not been implemented yet!"
  sum = []
  iterations = matrix.size - 2
  iterations.times do |i|
    iterations.times do |j|
      sum << (
        matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] +
        matrix[i+1][j+1] +
        matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]
      )
    end
  end

  return sum.max
end