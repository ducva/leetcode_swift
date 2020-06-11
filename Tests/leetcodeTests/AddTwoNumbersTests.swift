//
//  File.swift
//  
//
//  Created by Michael Vu on 6/11/20.
//

import Foundation
import XCTest

@testable import leetcode

class AddTwoNumbersTests: XCTestCase {
    func testcase1() throws {
        let sol = AddTwoNumbers()
        let l1 = ListNode(1, nil)
        let l2 = ListNode(2, nil)
        let l3 = ListNode(3, nil)
        XCTAssertEqual(sol.addTwoNumbers(l1, l2)!.val, l3.val)
    }
    
    func testcase2() throws {
        // 12 + 3 = 15
        let sol = AddTwoNumbers()
        let l1 = ListNode(2, ListNode(1, nil))
        let l2 = ListNode(3, nil)
        let result = sol.addTwoNumbers(l1, l2)!
        XCTAssertEqual(result.val, 5)
        XCTAssertEqual(result.next!.val, 1)
    }
    func testcase3() throws {
        // 12 + 0 = 12
        let sol = AddTwoNumbers()
        let l1 = ListNode(2, ListNode(1, nil))
        let l2 = ListNode(0, nil)
        let result = sol.addTwoNumbers(l1, l2)!
        XCTAssertEqual(result.val, 2)
        XCTAssertEqual(result.next!.val, 1)
    }
    
    func testcase4() throws {
        // 342 + 465 = 807
        let sol = AddTwoNumbers()
        let l1 = ListNode(2, ListNode(4, ListNode(3, nil)))
        let l2 = ListNode(5, ListNode(6, ListNode(4, nil)))
        let result = sol.addTwoNumbers(l1, l2)!
        XCTAssertEqual(result.val, 7)
        XCTAssertEqual(result.next!.val, 0)
        XCTAssertNotNil(result.next!.next)
        XCTAssertEqual(result.next!.next!.val, 8)
    }
    func testcase5() throws {
        // 0 + 0 = 0
        let sol = AddTwoNumbers()
        let l1 = ListNode(0, nil)
        let l2 = ListNode(0, nil)
        let result = sol.addTwoNumbers(l1, l2)!
        XCTAssertEqual(result.val, 0)
        XCTAssertNil(result.next)
    }
    
    func testcase6() throws {
        // 5 + 5 = 10
        let sol = AddTwoNumbers()
        let l1 = ListNode(5, nil)
        let l2 = ListNode(5, nil)
        let result = sol.addTwoNumbers(l1, l2)!
        XCTAssertEqual(result.val, 0)
        XCTAssertNotNil(result.next)
        XCTAssertEqual(result.next!.val, 1)
    }
}
