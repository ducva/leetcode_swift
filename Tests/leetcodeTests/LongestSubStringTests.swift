//
//  File.swift
//  
//
//  Created by Michael Vu on 6/11/20.
//

import Foundation
import XCTest

@testable import leetcode

class LongestSubStringTests: XCTestCase {
    func testcase1() throws {
        let sol = LongestSubString()
        XCTAssertEqual(sol.lengthOfLongestSubstring("abca"), 3)
    }
    
    func testcase2() throws {
        let sol = LongestSubString()
        XCTAssertEqual(sol.lengthOfLongestSubstring("a"), 1)
        XCTAssertEqual(sol.lengthOfLongestSubstring("ab"), 2)
        XCTAssertEqual(sol.lengthOfLongestSubstring("abca"), 3)
        XCTAssertEqual(sol.lengthOfLongestSubstring("abacb"), 3)
        XCTAssertEqual(sol.lengthOfLongestSubstring("abcad"), 4)
        XCTAssertEqual(sol.lengthOfLongestSubstring("pwwkew"), 3)
        
        XCTAssertEqual(sol.lengthOfLongestSubstring("abcabcbb"), 3)
        XCTAssertEqual(sol.lengthOfLongestSubstring(" "), 1)
    }
}
