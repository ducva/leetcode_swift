```

The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R
And then read line by line: "PAHNAPLSIIGYIR"

row index target
0   0     0
0   1     4

Write the code that will take a string and make this conversion given a number of rows:

string convert(string s, int numRows);
Example 1:

Input: s = "PAYPALISHIRING", numRows = 3
Output: "PAHNAPLSIIGYIR"
Example 2:

Input: s = "PAYPALISHIRING", numRows = 4
Output: "PINALSIGYAHRPI"
Explanation:

P     I    N
A   L S  I G
Y A   H R
P     I

0           6           12
1       5   7       11  13
2   4       8   10
3           9

pattern_length = numRows + numRows - 2 = 6
pattern_base_index = index % pattern_length

rowIndex = getDistance(pattern_base_index, pattern_length) 

index       pattern_base_index          temp        rowIndex
0           0                                       0
1           1                                       1
4           4                                       2
5           5                                       1
8           2                                       2

```

# Solution

## Found the pattern

- Because of the zigzac, we can see the V-like pattern.

```
0           
1       5   
2   4       
3           

```
- Let's say the number of rows is `numRows`, then
    - we need go down `numRows` steps
    - then we go up `numRows - 2` steps.

## The algorithm

- We just scan each character in the given string.
- At each step, from the character's index, we calculate its row index in the target string.

## Found the distance

Check follow the below table

```
0           6           12
1       5   7       11  13
2   4       8   10
3           9

pattern_length = numRows + numRows - 2 = 6
pattern_base_index = index % pattern_length

rowIndex = getDistance(pattern_base_index, pattern_length) 

index       pattern_base_index          temp        rowIndex
0           0                                       0
1           1                                       1
4           4                                       2
5           5                                       1
8           2                                       2

```

As you can see, characters at 1 and 5 will go to the same row 1. The row index is the distance from source index to the pattern's length.

```
getDistance(1, 6) = 1
getDistance(5, 6) = 1
```

