
def hourglass(matrix)
  negative_infinity = -1.0/0.0
  max_sum = negative_infinity
  4.times do |row|
    4.times do |column|
      max_sum = [max_sum, sum_single_hourglass(row, column, matrix)].max
    end
  end
  return max_sum
end

def sum_single_hourglass(row, column, m)
  sum = 0;
  3.times do |i|
    sum += m[row][column + i] # top
    sum += m[row + 2][column + i] # bottom
  end
  sum += m[row + 1][column + 1] # middle
  return sum
end
