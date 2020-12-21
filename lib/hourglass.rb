
def hourglass(matrix)
  return nil if matrix.empty?

  highest_sum = 0
  index = 0

  matrix.length.times do |row|
    matrix[row].length.times do |col|
      total = 0
      total += matrix[row][col]
      if total > highest_sum
        pp highest_sum
        highest_sum = total
      end

    end
  end

  return highest_sum
end

matrix = [
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
]

pp hourglass(matrix)