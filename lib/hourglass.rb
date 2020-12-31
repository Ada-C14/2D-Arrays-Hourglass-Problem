matrix = [
  [-9, -9, -9, 1, 1, 1],
  [0, -9, 0, 4, 3, 2],
  [-9, -9, -9, 1, 2, 3],
  [0, 0, 8, 6, 6, 0],
  [0, 0, 0, -2, 0, 0],
  [0, 0, 1, 2, 4, 0],
]
def hourglass(matrix)
  row = 0
  result = []
  while row < 4
    column = 0
    while column < 4
      counter = 0
      sum = 0
      while counter < 3
        sum += matrix[row][column + counter]
        counter += 1
      end
      counter = 0
      sum += matrix[row + 1][column + 1]
      while counter < 3
        sum += matrix[row + 2][column + counter]
        counter += 1
      end
      print sum.to_s + ", "
      result << sum
      column += 1
    end
    row += 1
  end
  max = result.max
  return max
end

hourglass(matrix)