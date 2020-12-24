
def hourglass(matrix)
  row = 1
  column = 1
  max = nil
  while row <= 4
    while (column >= 1 && column <= 4)
      puts "row # #{row}, column # #{column}"
      sum = matrix[row][column] + matrix[row - 1][column] + matrix[row + 1][column] + matrix[row][column - 1] + matrix[row][column + 1]
      puts "hourglass sum is: #{matrix[row][column]} + #{matrix[row - 1][column]} + #{matrix[row + 1][column]} + #{matrix[row][column - 1]} + #{matrix[row][column + 1]}"
      puts "which equals #{sum}"

      if (max == nil || sum > max)
        max = sum
        puts "new max is #{max}"
      end
      column += 1
      puts "column is now #{column}"

      # if column == 5
      #   column = 0
      #   puts "resetting column to be #{column}"
      # end
      puts "------------------end of inner column loop"
    end
    if column == 5
      column = 1
      puts "resetting column to be #{column}"
    end
    row += 1
    puts "row is #{row}"
    puts "---------------------------------end of outer row loop"
  end
  puts "final max is #{max}"
  return max
end