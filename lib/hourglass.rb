

#time complexity - O(nm) where n is number of rows and m is number of columns
#space complexity - O(1)
#This solution assumes a matrix where each row is the same length

def hourglass(matrix)
  max = matrix[0][0..2].sum + matrix[1][1] + matrix[2][0..2].sum
  0.upto(matrix.length - 3) do |row|
    0.upto(matrix[0].length - 3) do |col|
      hourglass_sum = matrix[row][col..(col + 2)].sum + matrix[row + 1][col + 1] + matrix[row + 2][col..(col + 2)].sum
      max = [hourglass_sum, max].max
    end
  end

  return max
end