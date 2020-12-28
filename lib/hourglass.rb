#Time complexity: O(1) == O(nm) where n is the number of rows and m is the number of columns in the matrix; for this case, n and m are both fixed values (6), O(nm) = O(36) == O(1)
# Space complexity: O(1) for the local variables (num_rows, num_columns, max_hourglass, hourglass_sum, and in the helper: row1, row2, row3)
def hourglass(matrix)
  num_rows = 6
  num_columns = 6
  max_hourglass = nil

  num_rows.times do  |row|
    if row > 0 && row < 5
      num_columns.times do |column|
        if column > 0 && column < 5
          hourglass_sum = hourglass_helper(matrix, [row, column])
          if max_hourglass.nil? || hourglass_sum > max_hourglass
            max_hourglass = hourglass_sum
          end
        end
      end
    end
  end

  return max_hourglass
end

def hourglass_helper(matrix, center)
  row1 = matrix[center[0] - 1][center[1] - 1] + matrix[center[0] - 1][center[1]] + matrix[center[0] - 1][center[1] + 1]
  row2 = matrix[center[0]][center[1]]
  row3 = matrix[center[0] + 1][center[1] - 1] + matrix[center[0] + 1][center[1]] + matrix[center[0] + 1][center[1] + 1]
  return row1 + row2 + row3
end