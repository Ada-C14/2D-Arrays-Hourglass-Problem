
def hourglass(matrix)
  # can we assume valid input?
  # assuming anything that isn't in a 3by3 is invalid input
  # let's just return 0 since it isn't an hourglass to begin with

  return 0 if matrix.length < 3 || matrix[0].length < 3

  max = matrix[0][0] + matrix[0][1] + matrix[0][2] + matrix[1][1] + matrix[2][0] + matrix[2][1] + matrix[2][2]

  matrix[0...matrix.length-2].each_with_index do |row, i|
    row[0...row.length-2].each_with_index do |element, j|
      cur_sum = element + row[j + 1] + row[j + 2]
      cur_sum += matrix[i + 1][j + 1]
      cur_sum += matrix[i + 2][j] + matrix[i + 2][j + 1] + matrix[i + 2][j + 2]

      max = cur_sum if cur_sum > max
    end
  end

  return max
end