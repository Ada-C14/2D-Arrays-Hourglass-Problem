# time: O(n^2) with n being the number of rows and the number of columns (they are the same in this case)
# space: O(1) all the variables are constant if n grows


def sum_three(array, column_i)
  return array[column_i] + array[column_i + 1] + array[column_i + 2]
end

def hourglass(matrix)
  max_sum = -1.0/0.0
  row_i = 0
  while row_i < matrix.length - 2
    column_i = 0
    while column_i < matrix.length - 2
      sum = sum_three(matrix[row_i], column_i) + matrix[row_i + 1][column_i + 1] + sum_three(matrix[row_i + 2], column_i)
      column_i += 1
      max_sum = sum if sum > max_sum
    end
    row_i += 1
    end
  return max_sum
end