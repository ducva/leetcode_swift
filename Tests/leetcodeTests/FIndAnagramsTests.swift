//
//  File.swift
//  
//
//  Created by Michael Vu on 6/10/20.
//

import Foundation
import XCTest
@testable import leetcode


class FindAnagramsTests : XCTestCase {
    func testSimple() throws {
        let sol = FindAnagrams()
        XCTAssertEqual(sol.findAnagrams("abc", "abc"), [0])
        XCTAssertEqual(sol.findAnagrams("abcabc", "abc"), [0,1,2,3])
    }
}
