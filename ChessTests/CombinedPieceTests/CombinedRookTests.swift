//
//  CombinedRookTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class CombinedRookTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////////////////////
    // WHITE ROOK TEST CASES //
    ///////////////////////////
    
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
    
    func testGetWhiteRookOnD4() {
        
        kRookValue ?? D4
    }
    
    func testPutWhiteRookOnD4() {
        
        kRookValue >> D4
    }
    
    ///////////////////////////
    // BLACK ROOK TEST CASES //
    ///////////////////////////
    
    func testMoveBlackRookValueFromD4ToD5() {
    
        kRookValue > (D4 > D5)
    }
    
    func testMoveBlackRookValueFromD4ToD5ToE5() {
        
        (kRookValue > (D4 > D5)) > E5
    }
    
    func testMoveBlackRookValueFromF6ToF1() {
        
        kRookValue > (F6 > F1)
    }
    
    func testMoveBlackRookValueFromF6ToF2ToA2() {
        
        (kRookValue > (F6 > F2)) > A2
    }
    
    func testGetBlackRookValueOnD4() {
        
        -kRookValue ?? D4
    }
    
    func testPutBlackRookValueOnD4() {
        
        -kRookValue >> D4
    }
}