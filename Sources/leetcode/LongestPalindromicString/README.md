```
Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

Example 1:

Input: "babad"
Output: "bab"
Note: "aba" is also a valid answer.
Example 2:

Input: "cbbd"
Output: "bb"
```

# Solution

## There are 2 types of palindromic pattern

Even Pattern likes "xaax"
Odd Pattern likes "xax"

## Algorithm

- Scan the input string to find all odd and even seeds
- with each even seed, we try to expand the palindromic from it. and compare with the max length.
- do similar things with odd seeds.


