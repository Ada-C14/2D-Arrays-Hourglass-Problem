
def hourglass(matrix)
  #raise NotImplementedError, "The matrix method has not been implemented yet!"
  # 7 values * smallest value they can be -9
  max = -63
  # Iterate over the rows first then columns
  4.times do |row|
    4.times do |col|
      # Sum up the values in the hour glass
      sum = matrix[row][col] + matrix[row][col + 1] + matrix[row][col + 2] +                    # top
          matrix[row + 1][col + 1] +                                                            # middle
          matrix[row + 2][col] + matrix[row + 2][col + 1] + matrix[row + 2][col + 2]            # bottom
      # compare hourglass sum with max hourglass sum
      max = sum if sum > max
    end
  end
  return max
end