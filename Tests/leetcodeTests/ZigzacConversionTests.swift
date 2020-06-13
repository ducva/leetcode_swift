//
//  File.swift
//  
//
//  Created by Michael Vu on 6/12/20.
//

import Foundation

import XCTest

@testable import leetcode

class ZigzacConversionTests : XCTestCase {
//    func testDirection() throws {
//        let sol = ZigzacConversion()
//        XCTAssertEqual(sol.getDirection(0, 4), true)
//        XCTAssertEqual(sol.getDirection(1, 4), true)
//        XCTAssertEqual(sol.getDirection(2, 4), true)
//        XCTAssertEqual(sol.getDirection(3, 4), true)
//        XCTAssertEqual(sol.getDirection(4, 4), false)
//        XCTAssertEqual(sol.getDirection(5, 4), false)
//        XCTAssertEqual(sol.getDirection(6, 4), false)
//        XCTAssertEqual(sol.getDirection(7, 4), true)
//    }
    func testcase2() throws {
        let sol = ZigzacConversion()
        XCTAssertEqual(sol.convert("PAYPALISHIRING", 4), "PINALSIGYAHRPI")
    }
    func testcase1() throws {
        let sol = ZigzacConversion()
        XCTAssertEqual(sol.convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
    }
}
