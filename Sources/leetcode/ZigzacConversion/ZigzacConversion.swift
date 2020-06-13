//
//  File.swift
//  
//
//  Created by Michael Vu on 6/12/20.
//

import Foundation

class ZigzacConversion {
    var cache = [Int: Int]()
    func getDistance(_ n: Int, _ m: Int, _ cache: inout [Int: Int]) -> Int {
        // getDistance(5,6) -> 1
        // getDistance(1,6) -> 1
        if let d = cache[n] {
            return d
        }
        cache[n] = min(n % m, m - n % m)
        return cache[n]!
    }
    
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows <= 1 {
            return s
        }
        let sa = Array(s)
        var ans = [[Character]](repeating: [Character](), count: numRows)
        let pattern_length = 2 * numRows - 2
        
        for (index, c) in sa.enumerated() {
            let rowIndex = getDistance(index % pattern_length, pattern_length, &cache)
            ans[rowIndex].append(c)
        }
        return String(ans.flatMap( {String($0) }))
    }
}
