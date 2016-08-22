//
//  QueenBlockMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class QueenBlockMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testBlockWhiteQueenFromD4ToD5() {
        
        kQueenValue >> D5
        
        kQueenValue !== (D4 > D5)
    }
    
    func testBlockWhiteQueenFromD4ToE5ToF4() {
        
        kQueenValue >> E5
        kQueenValue >> F4
        
        (kQueenValue !== (D4 > E5)) !== F4
    }
    
    func testBlockWhiteQueenFromD4ToD5ToE5() {
        
        kQueenValue >> D5
        kQueenValue >> E5
        
        (kQueenValue !== (D4 > D5)) !== E5
    }
    
    func testBlockWhiteQueenFromF6ToG5() {
        
        kQueenValue >> G5
        
        kQueenValue !== (F6 > G5)
    }
    
    func testBlockWhiteQueenFromF6ToG5ToH4() {
        
        kQueenValue >> G5
        kQueenValue >> H4
        
        (kQueenValue !== (F6 > G5)) !== H4
    }
    
    func testBlockWhiteQueenFromA1ToH8() {
        
        kQueenValue >> H8
        
        kQueenValue !== (A1 > H8)
    }
    
    func testBlockWhiteQueenFromH1ToA8() {
        
        kQueenValue >> D5
        
        kQueenValue !== (H1 > A8)
    }
    
    func testBlockWhiteQueenFromF6ToF1() {
        
        kQueenValue >> F3
        
        kQueenValue !== (F6 > F1)
    }
    
    func testBlockWhiteQueenFromF6ToF2ToA2() {
        
        kQueenValue >> F4
        kQueenValue >> C2
        
        (kQueenValue !== (F6 > F2)) !== A2
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testBlockBlackQueenFromD4ToD5() {
        
        -kQueenValue >> D5
        
        -kQueenValue !== (D4 > D5)
    }
    
    func testBlockBlackQueenFromD4ToE5ToF4() {
        
        -kQueenValue >> E5
        -kQueenValue >> F4
        
        (-kQueenValue !== (D4 > E5)) !== F4
    }
    
    func testBlockBlackQueenFromD4ToD5ToE5() {
        
        -kQueenValue >> D5
        -kQueenValue >> E5
        
        (-kQueenValue !== (D4 > D5)) !== E5
    }
    
    func testBlockBlackQueenFromF6ToG5() {
        
        -kQueenValue >> G5
        
        -kQueenValue !== (F6 > G5)
    }
    
    func testBlockBlackQueenFromF6ToG5ToH4() {
        
        -kQueenValue >> G5
        -kQueenValue >> H4
        
        (-kQueenValue !== (F6 > G5)) !== H4
    }
    
    func testBlockBlackQueenFromA1ToH8() {
        
        -kQueenValue >> D4
        
        -kQueenValue !== (A1 > H8)
    }
    
    func testBlockBlackQueenFromH1ToA8() {
        
        -kQueenValue >> D5
        
        -kQueenValue !== (H1 > A8)
    }
    
    func testBlockBlackQueenFromF6ToF1() {
        
        -kQueenValue >> F3
        
        -kQueenValue !== (F6 > F1)
    }
    
    func testBlockBlackQueenFromF6ToF2ToA2() {
        
        -kQueenValue >> F3
        -kQueenValue >> C2
        
        (-kQueenValue !== (F6 > F2)) !== A2
    }
}