
def hourglass(matrix)
  max_hourglass = nil
  6.times do  |row|
    if row > 0 && row < 5
      6.times do |column|
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