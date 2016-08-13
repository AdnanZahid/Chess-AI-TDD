//
//  RookTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class RookTests: XCTestCase {
    
    override func tearDown() {
        super.tearDown()
        
        Board.sharedInstance.setupPieceBoard()
    }
    
    ///////////////////////////
    // WHITE ROOK TEST CASES //
    ///////////////////////////
    
    func testMoveWhiteRookFromD4ToD5() {
        
        kRook > (D4 > D5)
    }
    
    func testMoveWhiteRookFromD4ToD5ToE5() {
        
        (kRook > (D4 > D5)) > E5
    }

    func testMoveWhiteRookFromF6ToF1() {
        
        kRook > (F6 > F1)
    }
    
    func testMoveWhiteRookFromF6ToF2ToA2() {
        
        (kRook > (F6 > F2)) > A2
    }
    
    func testGetWhiteRookOnD4() {
        
        kRook ?? D4
    }
    
    func testPutWhiteRookOnD4() {
        
        kRook >> D4
    }
    
    ///////////////////////////
    // BLACK ROOK TEST CASES //
    ///////////////////////////
    
    func testMoveBlackRookFromD4ToD5() {
    
        kRook > (D4 > D5)
    }
    
    func testMoveBlackRookFromD4ToD5ToE5() {
        
        (kRook > (D4 > D5)) > E5
    }
    
    func testMoveBlackRookFromF6ToF1() {
        
        kRook > (F6 > F1)
    }
    
    func testMoveBlackRookFromF6ToF2ToA2() {
        
        (kRook > (F6 > F2)) > A2
    }
    
    func testGetBlackRookOnD4() {
        
        -kRook ?? D4
    }
    
    func testPutBlackRookOnD4() {
        
        -kRook >> D4
    }
}