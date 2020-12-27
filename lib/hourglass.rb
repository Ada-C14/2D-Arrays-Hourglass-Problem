

def hourglass(matrix)
  max = -1.0 / 0.0 # NaN

  num_rows = matrix.length

  if num_rows < 3 # min num of rows to have a hourglass
    return 0
  end

  # this assumes that we have a first row
  num_cols = matrix[0].length # the number of column using the length of row 0

  # assume 2 at a time
  # (x,y)
  #   (x,y)
  #     (x,y)
  # [1,2,3,4]
  # [1,2], [2,3], [3,4]
  # num of times to loop = total number of elements in one row - (number of elements you look at one time - 1)
  outer_loop_count = num_cols - (3 - 1)
  inner_loop_count = num_rows - (3 - 1)
  
  outer_loop_count.times do |i|
    inner_loop_count.times do |j|
      sum = matrix[i][j] + matrix[i][j + 1] + matrix[i][j + 2] + # top row
            matrix[i + 1][j + 1] + # mid row
            matrix[i + 2][j] + matrix[i + 2][j + 1] + matrix[i + 2][j + 2] # last row
      max = sum if sum > max
    end
  end

  return max
end
