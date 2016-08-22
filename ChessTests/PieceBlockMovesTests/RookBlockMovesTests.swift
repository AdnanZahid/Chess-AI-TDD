//
//  RookBlockMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class RookBlockMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testBlockWhiteRookFromD4ToD5() {
        
        kRookValue >> D5
        
        kRookValue !== (D4 > D5)
    }
    
    func testBlockWhiteRookFromD4ToD5ToE5() {
        
        kRookValue >> D5
        kRookValue >> E5
        
        (kRookValue !== (D4 > D5)) !== E5
    }

    func testBlockWhiteRookFromF6ToF1() {
        
        kRookValue >> F1
        
        kRookValue !== (F6 > F1)
    }
    
    func testBlockWhiteRookFromF6ToF2ToA2() {
        
        kRookValue >> F4
        kRookValue >> C2
        
        (kRookValue !== (F6 > F2)) !== A2
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testBlockBlackRookFromD4ToD5() {
        
        -kRookValue >> D5
        
        -kRookValue !== (D4 > D5)
    }
    
    func testBlockBlackRookFromD4ToD5ToE5() {
        
        -kRookValue >> D5
        -kRookValue >> E5
        
        (-kRookValue !== (D4 > D5)) !== E5
    }
    
    func testBlockBlackRookFromF6ToF1() {
        
        -kRookValue >> F3
        
        -kRookValue !== (F6 > F1)
    }
    
    func testBlockBlackRookFromF6ToF2ToA2() {
        
        -kRookValue >> F4
        -kRookValue >> A2
        
        (-kRookValue !== (F6 > F2)) !== A2
    }
}