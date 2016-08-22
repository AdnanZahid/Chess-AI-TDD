//
//  RookAllowMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class RookAllowMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testMoveWhiteRookFromD4ToD5() {
        
        kRookValue > (D4 > D5)
    }
    
    func testMoveWhiteRookFromD4ToD5ToE5() {
        
        (kRookValue > (D4 > D5)) > E5
    }

    func testMoveWhiteRookFromF6ToF1() {
        
        kRookValue > (F6 > F1)
    }
    
    func testMoveWhiteRookFromF6ToF2ToA2() {
        
        (kRookValue > (F6 > F2)) > A2
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testMoveBlackRookFromD4ToD5() {
    
        -kRookValue > (D4 > D5)
    }
    
    func testMoveBlackRookFromD4ToD5ToE5() {
        
        (-kRookValue > (D4 > D5)) > E5
    }
    
    func testMoveBlackRookFromF6ToF1() {
        
        -kRookValue > (F6 > F1)
    }
    
    func testMoveBlackRookFromF6ToF2ToA2() {
        
        (-kRookValue > (F6 > F2)) > A2
    }
}