//
//  File.swift
//  
//
//  Created by Michael Vu on 6/11/20.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode()
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        var carrying = 0
        var r = result
        var t1 = l1
        var t2 = l2
        while t1 != nil || t2 != nil {
            let ans = (t1 != nil ? t1!.val : 0) + (t2 != nil ? t2!.val : 0) + carrying
            carrying = ans >= 10 ? 1 : 0
            r.val = ans >= 10 ? ans - 10 : ans
            t1 = t1 != nil ? t1!.next : nil
            t2 = t2 != nil ? t2!.next : nil
            if t1 != nil || t2 != nil {
                r.next = ListNode()
                r = r.next!
            }
        }
        if carrying > 0 {
            r.next = ListNode(carrying, nil)
        }
        return result
    }
}
