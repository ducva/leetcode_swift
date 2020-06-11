//
//  File.swift
//  
//
//  Created by Michael Vu on 6/10/20.
//

import Foundation
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

class BinaryWatch {
    func calculateCases(_ num: Int, isHour: Bool=true) -> [Int] {
        var ans = [Int]()
        let src = isHour ? [1,2,4,8] : [1,2,4,8,16,32]
        let cases = src.nonRepeatCombinations(k: num)
        for c in cases {
            let sum = c.reduce(0, {x, y in
                x + y
            })
            ans.append(sum)
        }
        return ans.filter({ (isHour && $0 < 12) || (!isHour && $0 < 60) })
    }
    public func presentTime(_ hour: Int, _ minute: Int) -> String {
        return String(format: "%d", hour) + ":" + String(format: "%02d", minute)
    }
    public func readBinaryWatch(_ num: Int) -> [String] {
        var ans = [String]()
        for i in 0...num {
            let hours = calculateCases(i)
            let minutes = calculateCases(num - i, isHour: false)
            for h in hours {
                for m in minutes {
                    if h == 12 && m == 0 {
                        continue
                    }
                    ans.append(presentTime(h, m))
                }
            }
        }
        return ans.sorted()
    }
}
