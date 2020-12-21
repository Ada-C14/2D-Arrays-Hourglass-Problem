
def hourglass(matrix)
  totals = []

  matrix.each_with_index do |row, i|
    row.each_with_index do |col, j|
      next if j > 3
      next if i > 3

      total = matrix[i][j]
      total += matrix[i][j + 1]
      total += matrix[i][j + 2]

      total += matrix[i + 1][j + 1]

      total += matrix[i + 2][j]
      total += matrix[i + 2][j + 1]
      total += matrix[i + 2][j + 2]
      totals << total
    end
  end

  return totals.max
end




