
def hourglass(matrix)
  # can we assume valid input?
  # assuming anything that isn't in a 3by3 is invalid input
  # let's just return 0 since it isn't an hour glass to begin with
  return 0 if matrix.length < 3 || matrix[0].length < 3
end