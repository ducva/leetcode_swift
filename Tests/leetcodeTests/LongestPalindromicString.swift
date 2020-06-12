//
//  File.swift
//  
//
//  Created by Michael Vu on 6/11/20.
//

import Foundation
import XCTest

@testable import leetcode

class LongestPalindromicStringTests : XCTestCase {
//    func testFindSeeds() throws {
//        let sol = LongestPalindromicString()
//        XCTAssertEqual(sol.findSeeds(["a","a"]), [[], [0]])
//        XCTAssertEqual(sol.findSeeds(["b","a","b"]), [[1], []])
//        XCTAssertEqual(sol.findSeeds(["b","a","b","b"]), [[1], [2]])
//    }
    func testcase1() throws {
        let sol = LongestPalindromicString()
        XCTAssertEqual(sol.longestPalindrome("abc"), "a")
        XCTAssertEqual(sol.longestPalindrome("abba"), "abba")
        XCTAssertEqual(sol.longestPalindrome("abscdc"), "cdc")
        XCTAssertEqual(sol.longestPalindrome("cbbd"), "bb")
        XCTAssertEqual(sol.longestPalindrome("babad"), "bab")
    }
    func testcase3() throws {
        let sol = LongestPalindromicString()
        let s = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
        
        XCTAssertEqual(sol.longestPalindrome(s), "ranynar")
    }
}
