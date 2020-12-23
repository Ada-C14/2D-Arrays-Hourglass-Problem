
def hourglass(matrix)
  # assumptions:
  # matrix is always a 6 by 6 cube; hourglass is always 3 by 1 by 3

  # therefore, hourglasses will always be at the same locations, eg:
  # row 0, index 0-2, row 1 index 1, row 2 index 0-2
  # row 1, index 0-2, row 1 index 1, row 2 index 0-2
  # row 2, index 0-2, row 1 index 1, row 2 index 0-2
  # row 3, index 0-2, row 1 index 1, row 2 index 0-2

  # row 0, index 1-3, row 1 index 2, row 3 index 1-3
  # row 1, index 1-3, row 1 index 2, row 3 index 1-3
  # row 2, index 1-3, row 1 index 2, row 3 index 1-3
  # row 3, index 1-3, row 1 index 2, row 3 index 1-3 ....

  # so given a starting point [e.g. row 0, index 0], go over 1, and one again
  # then go down and over one
  # then go 0, 1, 2
  # record the sum of these indices
  # repeat this process for rows 1-3 and if the sum is larger, save over the old sum
  # return the (max) sum at the end

  max = nil # must be nil not 0 to account for arrays with negative numbers

  for i in 0..3
    for j in 0..3
      hour_sum = matrix[i][j] + matrix[i][j + 1] + matrix[i][j + 2] # first hourglass_row
      hour_sum += matrix[i + 1][j + 1] # second
      hour_sum += matrix[i + 2][j] + matrix[i + 2][j + 1] + matrix[i + 2][j + 2] # third

      max ||= hour_sum # account for if max is nil
      if hour_sum > max
        max = hour_sum
      end
    end
  end

  return max

  end