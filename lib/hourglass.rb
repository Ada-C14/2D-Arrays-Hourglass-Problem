
def hourglass(matrix)
  # raise NotImplementedError, "The matrix method has not been implemented yet!"
  # matrix is always a 6 by 6 cube; hourglass is always 3 by 1 by 3

  # therefore, hourglasses will always be at the same locations, eg
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

  # TEST find first hourglass
  # matrix[0].each_with_index do |value, index|
  #   if value == start
  #     sum += value
  #   elsif index == matrix.index(start + 1)
  #     sum += value
  #   elsif index == matrix.index(start + 2)
  #     sum += value
  #   end
  # end
  #
  # matrix[1].each_with_index do |value, index|
  #   if index == 1
  #     sum += value
  #   end
  # end
  #
  # matrix[2].each_with_index do |value, index|
  #   if index == 0
  #     sum += value
  #   elsif index == 1
  #     sum += value
  #   elsif index == 2
  #     sum += value
  #   end
  # end

  # return sum, sum_test

  # TEST what would the hourglass be in relation to start?
  # sum = 0
  # start = matrix[0][0]
  # start_row = 0
  # start_column = 0

  # a = start
  # # puts a
  # b = matrix[start_row][(start_column + 1)]
  # # puts b
  # c = matrix[start_row][(start_column + 2)]
  # # puts c
  # d = matrix[start_row + 1][(start_column + 1)]
  # # puts d
  # e = matrix[start_row + 2][(start_column)]
  # # puts e
  # f = matrix[start_row + 2][(start_column + 1)]
  # # puts f
  # g = matrix[start_row + 2][(start_column + 2)]
  # # puts g

  # sum_test = (a + b + c + d + e + f + g)


  # now do it for all the hourglasses...

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

# matrix = [
#     [1, 1, 1, 0, 0, 0],
#     [0, 1, 0, 0, 0, 0],
#     [1, 1, 1, 0, 0, 0],
#     [0, 0, 0, 0, 0, 0],
#     [0, 0, 0, 0, 0, 0],
#     [0, 0, 0, 0, 0, 0],
# ]
#
# p hourglass(matrix)
#
# matrix2 = [
#       [ 0, -4, -6,  0, -7, -6],
#       [-1, -2, -6, -8, -3, -1],
#       [-8, -4, -2, -8, -8, -6],
#       [-3, -1, -2, -5, -7, -4],
#       [-3, -5, -3, -6, -6, -6],
#       [-3, -6,  0, -8, -6, -7],
#     ]
# p hourglass(matrix2)