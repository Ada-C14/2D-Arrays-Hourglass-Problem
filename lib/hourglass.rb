
def hourglass(matrix)
  #time complexity - O(n^2)
  # space complexity - log(n) ???

  # raise NotImplementedError, "The matrix method has not been implemented yet!"
  new_array = []
  i = 0 #i = column, j = row
  while i < 4
    j = 0
    while j < 4
      new_array << matrix[j][i] + matrix[j][i + 1] + matrix[j][i + 2] + matrix[j + 1][i + 1] +
                      matrix[j + 2][i] + matrix[j + 2][i + 1] + matrix[j + 2][i + 2]
      j += 1
    end
    i += 1
  end
  pp new_array
  return new_array.max

end