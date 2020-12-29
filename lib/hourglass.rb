
def hourglass(matrix)
  x = 0
  max = nil
  while x <= 3
    y = 0
    while y <= 3
      sum = 0
      hgx = x
      hgy = y
      for i in 0..2
        sum += matrix[hgx][hgy+i]
      end
      sum += matrix[hgx+1][hgy+1]
      for i in 0..2
        sum += matrix[hgx+2][hgy+i]
      end
      if max == nil
        max = sum
      end
      if sum > max
        max = sum
      end
      y += 1
    end
    x += 1
  end
  return max
end