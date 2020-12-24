
def hourglass(matrix)
  r = 0
  max_sum = -1.0/0
  while matrix[r + 2]
    c = 0
    while matrix[r][c + 2]
      sum = [matrix[r][c], matrix[r][c + 1], matrix[r][c + 2], matrix[r + 1][c + 1], matrix[r + 2][c], matrix[r + 2][c + 1], matrix[r + 2][c +2]].sum
      max_sum = sum if sum > max_sum
      c += 1
    end
    r += 1
  end
  return max_sum
end