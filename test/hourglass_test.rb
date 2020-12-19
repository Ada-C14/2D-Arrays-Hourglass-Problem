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

  it "will return 13 for a this matrix" do
    # Arrange
    matrix = [
      [1,  1,  1,  0,  0, 0],
      [0,  1,  0,  0,  0, 0],
      [1,  1,  1,  0,  0, 0],
      [0,  9,  2, -4, -4, 0],
      [0,  0,  0, -2,  0, 0],
      [0,  0, -1, -2, -4, 0]
    ]

    # Act
    answer = hourglass(matrix)

    # Assert
    expect(answer).must_equal 13
  end

  it "will return -19 for a this matrix" do
    # Arrange
    matrix = [
      [ 0, -4, -6,  0, -7, -6],
      [-1, -2, -6, -8, -3, -1],
      [-8, -4, -2, -8, -8, -6],
      [-3, -1, -2, -5, -7, -4],
      [-3, -5, -3, -6, -6, -6],
      [-3, -6,  0, -8, -6, -7],
    ]

    # Act
    answer = hourglass(matrix)

    # Assert
    expect(answer).must_equal -19
  end
end