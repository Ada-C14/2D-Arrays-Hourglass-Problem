
def hourglass(matrix)

  return nil if matrix.length < 3 || matrix[0].length < 3

  sum_array = []
  rows = matrix.length - 2
  columns = matrix[0].length - 2

  rows.times do |row|
    columns.times do |column|
      sum = 0
      3.times do |i|
        sum = sum + matrix[row][column + i] + matrix[row + 2][column + i]
      end

      sum_array << sum + matrix[row + 1][column + 1]
    end
  end

  return sum_array.max

end