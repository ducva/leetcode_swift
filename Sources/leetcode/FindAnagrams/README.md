```
Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.

Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.

The order of output does not matter.

Example 1:

Input:
s: "cbaebabacd" p: "abc"

Output:
[0, 6]

Explanation:
The substring with start index = 0 is "cba", which is an anagram of "abc".
The substring with start index = 6 is "bac", which is an anagram of "abc".
Example 2:

Input:
s: "abab" p: "ab"

Output:
[0, 1, 2]

Explanation:
The substring with start index = 0 is "ab", which is an anagram of "ab".
The substring with start index = 1 is "ba", which is an anagram of "ab".
The substring with start index = 2 is "ab", which is an anagram of "ab".
```

# Solution

The biggest issue for using Swift to resolve this problem is accessing element in String.
At this time, accessing element from String is hard and slow.

The key point is converting both `s` and `p` into Array of Int (ascii code) from the begining.

## Algorithms
- Create a dictionary from `p`, with keys are characters, and values are number of appearence of character in `p`.
- We use a window with size = `p.count`, slide along `s`.
    - while sliding, we keep counting characters
    - after passing a window, we compare the counting result with the dictionary
