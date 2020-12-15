# time complexity: matrix size is fixed so O(1), otherwise O(row*col)
# space complexity: O(1) as only integer variables were created.

ROW = 6
COL = 6
def hourglass(matrix)
  max = matrix[0].sum
  sum = 0
  (ROW - 2).times do |r|
    (COL - 2).times do |c|
    if c == 0
      sum = matrix[r][c] + matrix[r][c + 1] + matrix[r][c + 2]
      sum += matrix[r + 1][c + 1]
      sum += matrix[r + 2][c] + matrix[r + 2][c + 1] + matrix[r + 2][c + 2]
    else #practing sliding window although it might not be efficient here. Removing the if statement will also work.
      sum = sum - matrix[r][c - 1] - matrix[r + 1][c] - matrix[r + 2][c - 1] + matrix[r][c + 2] + matrix[r + 1][c + 1] + matrix[r + 2][c + 2]
    end
    max = sum if sum > max
    end
  end
  return max
end
