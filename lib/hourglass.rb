
def hourglass(matrix)
  sums = []
  i = 0 # row index
  j = 0 # col index

  until sums.length == 16 # this would be the last hourglass

    sums << (matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] + matrix[i+1][j+1] + matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2])

    j += 1 # col index should increment 4x per row

    if j > 3 # if reach the end of the row
      j = 0 # reset col index
      i += 1 # bump down to next row
    end
  end

  return sums.max

end