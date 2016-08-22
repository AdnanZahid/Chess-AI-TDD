//
//  RookCapturesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class RookCapturesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testCaptureWhiteRookFromD4ToD5() {
        
        -kRookValue >> D5
        
        kRookValue > (D4 > D5)
    }
    
    func testCaptureWhiteRookFromD4ToD5ToE5() {
        
        -kRookValue >> D5
        -kRookValue >> E5
        
        (kRookValue > (D4 > D5)) > E5
    }

    func testCaptureWhiteRookFromF6ToF1() {
        
        -kRookValue >> F1
        
        kRookValue > (F6 > F1)
    }
    
    func testCaptureWhiteRookFromF6ToF2ToA2() {
        
        -kRookValue >> F2
        -kRookValue >> A2
        
        (kRookValue > (F6 > F2)) > A2
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testCaptureBlackRookFromD4ToD5() {
        
        kRookValue >> D5
        
        -kRookValue > (D4 > D5)
    }
    
    func testCaptureBlackRookFromD4ToD5ToE5() {
        
        kRookValue >> D5
        kRookValue >> E5
        
        (-kRookValue > (D4 > D5)) > E5
    }
    
    func testCaptureBlackRookFromF6ToF1() {
        
        kRookValue >> F1
        
        -kRookValue > (F6 > F1)
    }
    
    func testCaptureBlackRookFromF6ToF2ToA2() {
        
        kRookValue >> F2
        kRookValue >> A2
        
        (-kRookValue > (F6 > F2)) > A2
    }
}