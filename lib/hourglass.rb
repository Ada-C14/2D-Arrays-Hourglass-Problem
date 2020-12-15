# UNDERSTAND:
# input: 6x6 matrix (array of arrays)
# an hourglass is, for a 3x3 sub-matrix:
# >> all elems in the first and last row
# >> middle elem in the middle row
# calculate hourglass sums
# return the max hourglass sum (HS)

# PSEUDOCODE:
# vars for row start/end, col start/end
# var for max_sum seen so far
# increment row start/end points and calc HS
# when reach end of row, return row start/end to inital vals
# increment col start end until col end reaches bottom
# update max_sum as-needed

# Time: O((rows - 2) * (cols - 2)) --> O(rows * cols), where:
# >> rows == num rows in input matrix
# >> cols == num cols in input matrix
# >> 2 --> width of hourglass (3) - 1; height of hourglass (3) - 1
#
# Space: O(1)


def hourglass(matrix)
  # raise NotImplementedError, "The matrix method has not been implemented yet!"
  max_sum = nil

  matrix.each_with_index do |row, index|
    if index + 2 < matrix.size
      col_start = 0
      col_end = 2
      midpoint = (col_start + col_end) / 2

      until col_end == matrix[0].size
        hs_sum = (
          row[col_start] + row[midpoint] + row[col_end] +
          matrix[index + 1][midpoint] +
          matrix[index + 2][col_start] + matrix[index + 2][midpoint] + matrix[index + 2][col_end]
        )

        if !max_sum || max_sum < hs_sum
          max_sum = hs_sum
        end

        col_start += 1
        col_end += 1
        midpoint += 1
      end
    end
  end

  return max_sum
end
