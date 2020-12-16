
def hourglass(matrix)
  i = 0
  max_sum = (-1) * Float::INFINITY

  until matrix[i + 2].nil?
    j = 0
    until matrix[i][j + 2].nil?
      # hour-glass shape for better visualization of calculation:
      sum =
        matrix[i][j] + matrix[i][j + 1] + matrix[i][j + 2] +
                        matrix[i + 1][j + 1] +
        matrix[i + 2][j] + matrix[i + 2][j + 1] + matrix[i + 2][j + 2]

      max_sum = sum if sum > max_sum

      j += 1
    end
    i += 1
  end
  return max_sum
end
