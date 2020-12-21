
def hourglass(matrix)
  return 0 if matrix.empty?

  highest_sum = -63 #highest negative number possible is -9...7 values are added, so -9* 7 is -63. That's the highest neg. value we would come across.

  4.times do |row| # sum arrays will be 4 x 4
    4.times do |column|
      total = 0
      total += (matrix[row][column] + matrix[row][column + 1] + matrix[row][column + 2] + #top row
       matrix[row + 1][column + 1] + #middle row
      matrix[row + 2][column] + matrix[row + 2][column + 1] + matrix[row + 2][column + 2]) #bottom row
      if total > highest_sum
        highest_sum = total
      end
    end
  end

  return highest_sum
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
# pp hourglass(matrix)


