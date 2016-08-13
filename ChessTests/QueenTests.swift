//
//  QueenTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class QueenTests: XCTestCase {
    
    override func tearDown() {
        super.tearDown()
        
        Board.sharedInstance.setupPieceBoard()
    }
    
    ////////////////////////////
    // WHITE QUEEN TEST CASES //
    ////////////////////////////
    
    func testMoveWhiteQueenFromD4ToD5() {
        
        kQueen > (D4 > D5)
    }
    
    func testMoveWhiteQueenFromD4ToE5ToF4() {
        
        (kQueen > (D4 > E5)) > F4
    }
    
    func testMoveWhiteQueenFromD4ToD5ToE5() {
        
        (kQueen > (D4 > D5)) > E5
    }
    
    func testMoveWhiteQueenFromF6ToG5() {
        
        kQueen > (F6 > G5)
    }
    
    func testMoveWhiteQueenFromF6ToG5ToH4() {
        
        (kQueen > (F6 > G5)) > H4
    }
    
    func testMoveWhiteQueenFromA1ToH8() {
        
        kQueen > (A1 > H8)
    }
    
    func testMoveWhiteQueenFromH1ToA8() {
        
        kQueen > (H1 > A8)
    }
    
    func testMoveWhiteQueenFromF6ToF1() {
        
        kQueen > (F6 > F1)
    }
    
    func testMoveWhiteQueenFromF6ToF2ToA2() {
        
        (kQueen > (F6 > F2)) > A2
    }
    
    func testGetWhiteQueenOnD4() {
        
        kQueen ?? D4
    }
    
    func testPutWhiteQueenOnD4() {
        
        kQueen >> D4
    }
        
    ////////////////////////////
    // BLACK QUEEN TEST CASES //
    ////////////////////////////
    
    func testMoveBlackQueenFromD4ToD5() {
        
        -kQueen > (D4 > D5)
    }
    
    func testMoveBlackQueenFromD4ToE5toF4() {
        
        (-kQueen > (D4 > E5)) > F4
    }
    
    func testMoveBlackQueenFromD4ToD5ToE5() {
        
        (-kQueen > (D4 > D5)) > E5
    }
    
    func testMoveBlackQueenFromF6ToG5() {
        
        -kQueen > (F6 > G5)
    }
    
    func testMoveBlackQueenFromF6ToG5ToH4() {
        
        (-kQueen > (F6 > G5)) > H4
    }
    
    func testMoveBlackQueenFromD4ToE5ToF4() {
        
        (-kQueen > (D4 > E5)) > F4
    }
    
    func testMoveBlackQueenFromA1ToH8() {
        
        -kQueen > (A1 > H8)
    }
    
    func testMoveBlackQueenFromH1ToA8() {
        
        -kQueen > (H1 > A8)
    }
    
    func testMoveBlackQueenFromF6ToF1() {
        
        -kQueen > (F6 > F1)
    }
    
    func testMoveBlackQueenFromF6ToF2ToA2() {
        
        (-kQueen > (F6 > F2)) > A2
    }
    
    func testGetBlackQueenOnD4() {
        
        -kQueen ?? D4
    }
    
    func testPutBlackQueenOnD4() {
        
        -kQueen >> D4
    }
}