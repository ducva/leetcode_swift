```
A binary watch has 4 LEDs on the top which represent the hours (0-11), and the 6 LEDs on the bottom represent the minutes (0-59).

Each LED represents a zero or one, with the least significant bit on the right.

Given a non-negative integer n which represents the number of LEDs that are currently on, return all possible times the watch could represent.

Example:

Input: n = 1
Return: ["1:00", "2:00", "4:00", "8:00", "0:01", "0:02", "0:04", "0:08", "0:16", "0:32"]
Note:
The order of output does not matter.
The hour must not contain a leading zero, for example "01:00" is not valid, it should be "1:00".
The minute must be consist of two digits and may contain a leading zero, for example "10:2" is not valid, it should be "10:02".
```

# Solution

## Generate all possible combinations of `k` unique elements from an array.

We will use recursive method to generate all possible combinantions from an array.
First we take out the first element, and recursive generate all possible combinations of `k-1` elements from the remains.
After that, we have 1 set results.
finally, we try to generate all possible combinations of `k` elements from the remains. It means we ignore the first elements.
Merge this set result with the previous one we have all possible combinations.

```swift
extension Array{
    private func combos<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
        if k == 0 {
            return [[]]
        }

        guard let first = elements.first else {
            return []
        }

        let head = [first]
        
        // exclude the head element from the sub-combos.
        // by doing that, we will have all-unique-elements combinations.
        let remain = elements.dropFirst()
        let subcombos = combos(elements: remain, k: k - 1)
        var ret = subcombos.map { head + $0 }
        ret += combos(elements: remain, k: k)

        return ret
    }
    func nonRepeatCombinations(k: Int) -> [[Element]] {
        return combos(elements: ArraySlice(self), k: k)
    }
}
```
## Filter invalid cases

Follow the watch's display logic, it only shows time has hour < 12. It means the watch use 12h format. So in case we found the hour >=12, we should convert it into 12h format by -12. But actually because the watch, we must exclude these cases from the result.


