//
//  File.swift
//  
//
//  Created by Michael Vu on 6/11/20.
//

import Foundation

class LongestSubString {
    func letter2index(_ c: Character) -> Int {
        return Int(c.unicodeScalars.first!.value)
    }
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let si = s.map { letter2index($0)}
        var ref = [Int:Int]()
        
        var window_size = 0
        var start_index = 0
        var max_length = 0
        var index = 0
        while index < si.count {
            if ref[si[index]] == nil {
                ref[si[index]] = 0
            }
            ref[si[index]]! += 1
            window_size += 1
            if ref[si[index]]! > 1 {
                // duplicate character
                // compare current size of window with the max length
                if window_size - 1 > max_length {
                    max_length = window_size - 1
                }
                // resize the window to remove duplicated parts
                while start_index < index && ref[si[index]]! > 1 {
                    ref[si[start_index]]! -= 1
                    start_index += 1
                    window_size -= 1
                }
            }
            if window_size > max_length {
                max_length = window_size
            }
            index += 1
        }
        return max_length
    }
}
