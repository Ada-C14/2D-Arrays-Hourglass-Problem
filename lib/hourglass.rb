def hourglass(matrix)
  hourglass_total = []
  row = 0
  4.times do
    col = 0
    4.times do
      hourglass_total.push(matrix[row][col] + matrix[row][col + 1] + matrix[row][col + 2] + matrix[row + 1][col + 1] + matrix[row + 2][col] + matrix[row + 2][col + 1] + matrix[row + 2][col + 2])
      col += 1
    end
    row += 1
  end
  return hourglass_total.max
end