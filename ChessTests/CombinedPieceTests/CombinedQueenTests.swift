//
//  CombinedQueenTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class CombinedQueenTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ////////////////////////////
    // WHITE QUEEN TEST CASES //
    ////////////////////////////
    
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
    
    func testGetWhiteQueenOnD4() {
        
        kQueenValue ?? D4
    }
    
    func testPutWhiteQueenOnD4() {
        
        kQueenValue >> D4
    }
        
    ////////////////////////////
    // BLACK QUEEN TEST CASES //
    ////////////////////////////
    
    func testMoveBlackQueenValueFromD4ToD5() {
        
        -kQueenValue > (D4 > D5)
    }
    
    func testMoveBlackQueenValueFromD4ToE5toF4() {
        
        (-kQueenValue > (D4 > E5)) > F4
    }
    
    func testMoveBlackQueenValueFromD4ToD5ToE5() {
        
        (-kQueenValue > (D4 > D5)) > E5
    }
    
    func testMoveBlackQueenValueFromF6ToG5() {
        
        -kQueenValue > (F6 > G5)
    }
    
    func testMoveBlackQueenValueFromF6ToG5ToH4() {
        
        (-kQueenValue > (F6 > G5)) > H4
    }
    
    func testMoveBlackQueenValueFromD4ToE5ToF4() {
        
        (-kQueenValue > (D4 > E5)) > F4
    }
    
    func testMoveBlackQueenValueFromA1ToH8() {
        
        -kQueenValue > (A1 > H8)
    }
    
    func testMoveBlackQueenValueFromH1ToA8() {
        
        -kQueenValue > (H1 > A8)
    }
    
    func testMoveBlackQueenValueFromF6ToF1() {
        
        -kQueenValue > (F6 > F1)
    }
    
    func testMoveBlackQueenValueFromF6ToF2ToA2() {
        
        (-kQueenValue > (F6 > F2)) > A2
    }
    
    func testGetBlackQueenValueOnD4() {
        
        -kQueenValue ?? D4
    }
    
    func testPutBlackQueenValueOnD4() {
        
        -kQueenValue >> D4
    }
}