//
//  File.swift
//  
//
//  Created by Michael Vu on 6/11/20.
//

import Foundation

class LongestPalindromicString {
    func findSeeds(_ s: [Character]) -> [[Int]] {
        // find the seeds
        // return 2 arrays: odd seeds and even seeds
        var oddSeeds = [Int]()
        var evenSeeds = [Int]()
        
        for index in 0..<s.count {
            
            // even pattern "aa"
            if index + 1 < s.count && s[index] == s[index + 1] {
                evenSeeds.append(index)
            }
            // odd pattern "xax"
            if index + 1 < s.count && index - 1 >= 0 && s[index + 1] == s[index - 1] {
                oddSeeds.append(index)
            }
        }
        return [oddSeeds, evenSeeds]
    }
    
    func longestPalindrome(_ s: String) -> String {
        let sa = Array(s)
        
        // boundary cases
        if sa.count <= 0 {
            return ""
        }
        if sa.count == 1 {
            return s
        }
        
        var ans = [Character]()
        
        let seeds = self.findSeeds(sa)
        let oddSeeds = seeds[0]
        let evenSeeds = seeds[1]
        
        var distance = 1
        var curLength = 0
        var maxSeed = 0
        var maxLength = 0
        var isEven = false
        if !evenSeeds.isEmpty {
            // scan even seeds
            maxLength = 2
            maxSeed = evenSeeds.first!
            
            isEven = true
            for seed in evenSeeds {
                curLength = 2
                distance = 1
                while seed - distance >= 0 && seed + 1 + distance < sa.count && sa[seed - distance] == sa[seed + 1 + distance] {
                    curLength += 2
                    distance += 1
                }
                if curLength > maxLength {
                    maxLength = curLength
                    maxSeed = seed
                    
                }
            }
        }
        
        for seed in oddSeeds {
            distance = 2
            curLength = 3
            while seed - distance >= 0 && seed + distance < sa.count && sa[seed - distance] == sa[seed + distance] {
                curLength += 2
                distance += 1
            }
            if curLength > maxLength {
                maxLength = curLength
                maxSeed = seed
                isEven = false
            }
        }
        if isEven {
            for i in (maxSeed - (maxLength / 2 - 1))..<(maxSeed + maxLength / 2 + 1) {
                ans.append(sa[i])
            }
        } else {
            for i in (maxSeed - (maxLength - 1)/2 )..<(maxSeed + (maxLength-1)/2 + 1) {
                ans.append(sa[i])
            }
        }
        
        return String(ans)
    }
}
