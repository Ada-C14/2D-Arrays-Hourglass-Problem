# O(mn) time complexity -- Where m = # of rows, n = # of columns, since you have to check every element of every row,
#                          which also happens to be the number of columns, there really doesn't seem to be a way around
#                          a nested loop -- the outer loop grows in # ops with m, or the number of rows, the inner loop
#                          grows in # ops with n, the number of columns
# O(1) space complexity -- max and cur_sum are only two new variables created every time, I don't think any new arrays
#                          were created???
def hourglass(matrix)
  # can we assume valid input?
  # assuming anything that isn't more or equal to a 3by3 is invalid input
  # let's just return 0 since it isn't an hourglass to begin with

  return 0 if matrix.length < 3 || matrix[0].length < 3

  # get first hourglass
  max = matrix[0][0] + matrix[0][1] + matrix[0][2] + matrix[1][1] + matrix[2][0] + matrix[2][1] + matrix[2][2]

  matrix.each_with_index do |row, i|
    # prevent overflow
    break if i == matrix.length - 2

    row.each_with_index do |element, j|
      # prevent overflow
      break if j == row.length - 2

      # broke this up for clarity purposes
      # hourglass portion in current row
      cur_sum = element + row[j + 1] + row[j + 2]
      # middle hourglass portion
      cur_sum += matrix[i + 1][j + 1]
      # bottom hourglass portion
      cur_sum += matrix[i + 2][j] + matrix[i + 2][j + 1] + matrix[i + 2][j + 2]

      max = cur_sum if cur_sum > max
    end
  end

  return max
end