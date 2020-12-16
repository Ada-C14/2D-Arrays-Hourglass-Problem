
def hourglass(matrix)

  # return nil for a matrix less than a 3 x 3
  return nil if matrix.length < 3 || matrix[0].length < 3

  # store the sum of all hour glass possibilities
  sum_array = []

  rows = matrix.length - 2
  columns = matrix[0].length - 2

  rows.times do |row|
    columns.times do |column|
      sum = 0

      # help sum the top row and bottom row of the hour glass shape
      3.times do |i|
        sum = sum + matrix[row][column + i] + matrix[row + 2][column + i]
      end

      # add the middle row to the sum
      # shovel value to sum array
      sum_array << sum + matrix[row + 1][column + 1]
    end
  end

  return sum_array.max

end