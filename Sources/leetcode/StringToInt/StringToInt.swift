//
//  File.swift
//  
//
//  Created by Michael Vu on 6/18/20.
//

import Foundation

class StringToInt {
    func myAtoi(_ str: String) -> Int {
        let out = str.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if out.count <= 0 {
            return 0
        }
        
        let s = Array(out.split(separator: " ")[0])
        var ans:Int = 0
        
        if !s[0].isNumber && s[0] != "-" && s[0] != "+" {
            return 0
        }
        let signed = s[0] == "-"
        ans = s[0].isNumber ? Int(s[0].unicodeScalars.first!.value) - 48 : 0
        for i in 1..<s.count {
            if !s[i].isNumber {
                break
            }
            ans = ans * 10 + Int(s[i].unicodeScalars.first!.value) - 48
            if ans > Int32.max {
                return Int(signed ? Int32.min : Int32.max)
            }
        }
        return Int(signed ? 0 - ans : ans)
    }
}
