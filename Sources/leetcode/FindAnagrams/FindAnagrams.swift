//
//  File.swift
//  
//
//  Created by Michael Vu on 6/10/20.
//

import Foundation

class FindAnagrams {
    func letter2index(_ c: Character) -> Int {
        return Int(c.unicodeScalars.first!.value) - 97
    }
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var ans = [Int]()
        if s.count < p.count {
            return ans
        }
        
        let si = s.map { letter2index($0)}
        let pi = p.map {letter2index( $0 )}
        
        var ref = Array(repeating: 0, count: 26)
        for i in pi {
            ref[i] += 1
        }
        
        var map = Array(repeating: 0, count: 26)
        for i in 0..<si.count {
            map[si[i]] += 1
            
            if i - pi.count >= 0 {
                map[si[i - pi.count]] -= 1
            }
            if map == ref {
                ans.append(i - pi.count + 1)
            }
        }
        return ans
    }
}
