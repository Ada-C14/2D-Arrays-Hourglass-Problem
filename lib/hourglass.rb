#Time complexity: O(n^2)
# Space complexity: O(n^2)


def hourglass(matrix)
  sum = []
  i = 0
  j = 0

  (matrix.length - 2).times do |i|
    (matrix.length - 2).times do |j|

      sum << (matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] +
          matrix[i+1][j+1] +
          matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]
      )
    end
  end

  return sum.max
end

