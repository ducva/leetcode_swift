//
//  File.swift
//  
//
//  Created by Michael Vu on 6/18/20.
//

import Foundation

import XCTest
@testable import leetcode

class StringToIntTests: XCTestCase {
    func testcase1() throws {
        let sol = StringToInt()
        XCTAssertEqual(sol.myAtoi(""), 0)
        XCTAssertEqual(sol.myAtoi("123"), 123)
        
        XCTAssertEqual(sol.myAtoi("words 123"), 0)
        
        XCTAssertEqual(sol.myAtoi("123 words"), 123)
        XCTAssertEqual(sol.myAtoi("-123 words"), -123)
        XCTAssertEqual(sol.myAtoi("+123 words"), 123)
        XCTAssertEqual(sol.myAtoi("-91283472332"), -2147483648)
    }
}
