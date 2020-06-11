```
Given a string, find the length of the longest substring without repeating characters.

Example 1:

Input: "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: "bbbbb"
Output: 1
Explanation: The answer is "b", ith the length of 1.
Example 3:

Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
             Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
```
# Solution

## We care all kind of characters not only alphabet characters

## Use window slide

We use a window with changable-size to slide along the text
Each time, we stretch the window to the right side by adding the next character into the window's scope.
If the new character makes the window invalid (has duplicated character), we start resize the window from the left.
Before that, we compare the current window size with the max length to determine the new max length if needed.

To resize the window from left, we keep removing character from the window, then check whether the window becomes valid yet. If yes, we stop the resizing process.

