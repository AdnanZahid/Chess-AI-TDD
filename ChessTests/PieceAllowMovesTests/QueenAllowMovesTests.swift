//
//  QueenAllowMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class QueenAllowMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testMoveWhiteQueenFromD4ToD5() {
        
        kQueenValue > (D4 > D5)
    }
    
    func testMoveWhiteQueenFromD4ToE5ToF4() {
        
        (kQueenValue > (D4 > E5)) > F4
    }
    
    func testMoveWhiteQueenFromD4ToD5ToE5() {
        
        (kQueenValue > (D4 > D5)) > E5
    }
    
    func testMoveWhiteQueenFromF6ToG5() {
        
        kQueenValue > (F6 > G5)
    }
    
    func testMoveWhiteQueenFromF6ToG5ToH4() {
        
        (kQueenValue > (F6 > G5)) > H4
    }
    
    func testMoveWhiteQueenFromA1ToH8() {
        
        kQueenValue > (A1 > H8)
    }
    
    func testMoveWhiteQueenFromH1ToA8() {
        
        kQueenValue > (H1 > A8)
    }
    
    func testMoveWhiteQueenFromF6ToF1() {
        
        kQueenValue > (F6 > F1)
    }
    
    func testMoveWhiteQueenFromF6ToF2ToA2() {
        
        (kQueenValue > (F6 > F2)) > A2
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testMoveBlackQueenFromD4ToD5() {
        
        -kQueenValue > (D4 > D5)
    }
    
    func testMoveBlackQueenFromD4ToE5ToF4() {
        
        (-kQueenValue > (D4 > E5)) > F4
    }
    
    func testMoveBlackQueenFromD4ToD5ToE5() {
        
        (-kQueenValue > (D4 > D5)) > E5
    }
    
    func testMoveBlackQueenFromF6ToG5() {
        
        -kQueenValue > (F6 > G5)
    }
    
    func testMoveBlackQueenFromF6ToG5ToH4() {
        
        (-kQueenValue > (F6 > G5)) > H4
    }
    
    func testMoveBlackQueenFromA1ToH8() {
        
        -kQueenValue > (A1 > H8)
    }
    
    func testMoveBlackQueenFromH1ToA8() {
        
        -kQueenValue > (H1 > A8)
    }
    
    func testMoveBlackQueenFromF6ToF1() {
        
        -kQueenValue > (F6 > F1)
    }
    
    func testMoveBlackQueenFromF6ToF2ToA2() {
        
        (-kQueenValue > (F6 > F2)) > A2
    }
}