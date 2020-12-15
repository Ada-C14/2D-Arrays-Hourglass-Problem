# time complexity: matrix size is fixed so O(1), otherwise O(row*col)
# space complexity: O(1) as only integer variables were created.


HG_LENGTH = 3
def hourglass(matrix)
  row = matrix.length
  col = matrix[0].length
  max = -Float::INFINITY

  (row - 2).times do |r|
    hourglass_start = 0
    hourglass_end  = 0
    sum = 0

    while hourglass_end  < col
      #keep adding top and bottom elements
      sum += matrix[r][hourglass_end]
      sum += matrix[r + 2][hourglass_end]

      if hourglass_end >= HG_LENGTH - 1 #when we have a hourglass
        sum += matrix[r + 1][hourglass_start + 1] #add middle
        max = sum if sum > max
        sum = sum - matrix[r][hourglass_start] - matrix[r + 2][hourglass_start] - matrix[r + 1][hourglass_end - 1] #Subtract the elements going out of the sliding window
        hourglass_start += 1
      end
      hourglass_end += 1
    end

  end
  return max
end
