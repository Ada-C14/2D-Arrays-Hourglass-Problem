# 2D Arrays - Hourglass-Problem

This problem involves using and navigating a 2-dimenstional array.

## Learning Goals

By the end of this exercise we will be able to... 

- Write code accessing elements in a 2D array
- Write code using loops to iterate through a 2D array

## Problem Description

Given a  2D Array, **A**:

```
1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
```

An hourglass in **A** is a subset of values with indices falling in this pattern in A's graphical representation:

```
a b c
  d
e f g
```

There are **16** hourglasses in A. An hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in **A**, then print the maximum hourglass sum. The array will always be a 6 x 6 array.

Example

```
-9 -9 -9  1 1 1 
 0 -9  0  4 3 2
-9 -9 -9  1 2 3
 0  0  8  6 6 0
 0  0  0 -2 0 0
 0  0  1  2 4 0
 ```

The  hourglass sums are:

```
-63, -34, -9, 12, 
-10,   0, 28, 23, 
-27, -11, -2, 10, 
  9,  17, 25, 18
```
The highest hourglass sum is **28**  from the hourglass beginning at row 1, column 2:

```
0 4 3
  1
8 6 6
```

## Method Description

Complete the `hourglass_sum` method.

`hourglass_sum` has the following parameter(s):

`matrix`: an array of integers

Returns

An Integer the maximum hourglass sum


## Example

Sample Input

```
1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 2 4 4 0
0 0 0 2 0 0
0 0 1 2 4 0
```

Sample Output:  **19**

Explanation

 contains the following hourglasses:

```
1 1 1  1 1 0  1 0 0  0 0 0
  1      0      0      0
1 1 1  1 1 0  1 0 0  0 0 0

0 1 0  1 0 0  0 0 0  0 0 0
  1      1      0      0
0 0 2  0 2 4  2 4 4  4 4 0

1 1 1  1 1 0  1 0 0  0 0 0
  0      2      4      4
0 0 0  0 0 2  0 2 0  2 0 0

0 0 2  0 2 4  2 4 4  4 4 0
  0      0      2      0
0 0 1  0 1 2  1 2 4  2 4 0
```

The hourglass with the maximum sum (19) is:

```
2 4 4
  2
1 2 4
```