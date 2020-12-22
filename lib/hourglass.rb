# time complexity = O(n^2)
# space complexity = O(1)

def hourglass(matrix)
  sum = -100
  i = 1
  (matrix.length - 2).times do
    j = 1
    (matrix[0].length - 2).times do
      temp_sum = matrix[i][j] + matrix[i - 1][j - 1] + matrix[i - 1][j] + matrix[i - 1][j + 1] + matrix[i + 1][j - 1] + matrix[i + 1][j] + matrix[i + 1][j + 1]
      if sum < temp_sum
        sum = temp_sum
      end
      
      j += 1
    end

    i += 1
  end
  return sum

end