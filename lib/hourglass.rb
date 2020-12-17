
def hourglass(matrix)
  sum = 0
  max_sum = -1000

  4.times do |row|
    4.times do |col|
      sum = matrix[row][col] +
          matrix[row][col + 1] + matrix[row][col + 2] + matrix[row + 1][col + 1]+ matrix[row + 2][col] + matrix[row +2][col + 1] + matrix[row + 2][col + 2]

       max_sum = sum if sum > max_sum
      end
    end

  return max_sum
end