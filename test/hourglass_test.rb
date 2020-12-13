require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"

require_relative '../lib/hourglass'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Hourglass" do
  it "will return 7 for the 1st example matrix" do
    # Arrange
    matrix = [
      [1, 1, 1, 0, 0, 0],
      [0, 1, 0, 0, 0, 0],
      [1, 1, 1, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
    ]

    # Act
    answer = hourglass(matrix)

    # Assert
    expect(answer).must_equal 7
  end

  it "will return 28 for the 2nd example matrix" do
    # Arrange
    matrix = [
      [-9, -9, -9,  1, 1, 1],
      [ 0,  -9, 0,  4, 3, 2],
      [-9, -9, -9,  1, 2, 3],
      [ 0,  0,  8,  6, 6, 0],
      [ 0,  0,  0, -2, 0, 0],
      [ 0,  0,  1,  2, 4, 0],
    ]

    # Act
    answer = hourglass(matrix)

    # Assert
    expect(answer).must_equal 28
  end

  it "will return 19 for the 3rd example matrix" do
    # Arrange
    matrix = [
      [ 1,  1,  1,  0, 0, 0],
      [ 0,  1,  0,  0, 0, 0],
      [ 1,  1,  1,  0, 0, 0],
      [ 0,  0,  2,  4, 4, 0],
      [ 0,  0,  0,  2, 0, 0],
      [ 0,  0,  1,  2, 4, 0],
    ]

    # Act
    answer = hourglass(matrix)

    # Assert
    expect(answer).must_equal 19
  end

  it "will return 0 for a matrix of 0s" do
    # Arrange 
    matrix = [
      [ 0,  0,  0,  0, 0, 0],
      [ 0,  0,  0,  0, 0, 0],
      [ 0,  0,  0,  0, 0, 0],
      [ 0,  0,  0,  0, 0, 0],
      [ 0,  0,  0,  0, 0, 0],
      [ 0,  0,  0,  0, 0, 0],
    ]

    # Act
    answer = hourglass(matrix)

    # Assert
    expect(answer).must_equal 0
  end
end