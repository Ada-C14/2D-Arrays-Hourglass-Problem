
def hourglass(matrix)
  sum = 0
  r = 0
  c = 0
  max_sum = -1.0/0.0
  4.times do |r|
    4.times do |c|
    sum = matrix[r][c] + matrix[r][c + 1] + matrix[r][c + 2] + matrix[r + 1][c + 1] + matrix[r + 2][c] + matrix[r + 2][c + 1] + matrix[r + 2][c+ 2]
    max_sum = sum if max_sum < sum
    end
  end
return max_sum
end