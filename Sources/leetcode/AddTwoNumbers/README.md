```
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
```

# Solution


## Additional with regrouping

In case we have carrying after additional we shave to make a new node to store it. For example: 5 + 5 = 10.

## Divide is slower than adding/subtraction

Avoid / and % by using ? condition.
```swift
let ans = (t1 != nil ? t1!.val : 0) + (t2 != nil ? t2!.val : 0) + carrying
carrying = ans >= 10 ? 1 : 0
r.val = ans >= 10 ? ans - 10 : ans
```

