//
//  QueenCapturesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class QueenCapturesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testCaptureWhiteQueenFromD4ToD5() {
        
        -kQueenValue >> D5
        
        kQueenValue > (D4 > D5)
    }
    
    func testCaptureWhiteQueenFromD4ToE5ToF4() {
        
        -kQueenValue >> E5
        -kQueenValue >> F4
        
        (kQueenValue > (D4 > E5)) > F4
    }
    
    func testCaptureWhiteQueenFromD4ToD5ToE5() {
        
        -kQueenValue >> D5
        -kQueenValue >> E5
        
        (kQueenValue > (D4 > D5)) > E5
    }
    
    func testCaptureWhiteQueenFromF6ToG5() {
        
        -kQueenValue >> G5
        
        kQueenValue > (F6 > G5)
    }
    
    func testCaptureWhiteQueenFromF6ToG5ToH4() {
        
        -kQueenValue >> G5
        -kQueenValue >> H4
        
        (kQueenValue > (F6 > G5)) > H4
    }
    
    func testCaptureWhiteQueenFromA1ToH8() {
        
        -kQueenValue >> H8
        
        kQueenValue > (A1 > H8)
    }
    
    func testCaptureWhiteQueenFromH1ToA8() {
        
        -kQueenValue >> A8
        
        kQueenValue > (H1 > A8)
    }
    
    func testCaptureWhiteQueenFromF6ToF1() {
        
        -kQueenValue >> F1
        
        kQueenValue > (F6 > F1)
    }
    
    func testCaptureWhiteQueenFromF6ToF2ToA2() {
        
        -kQueenValue >> F2
        -kQueenValue >> A2
        
        (kQueenValue > (F6 > F2)) > A2
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testCaptureBlackQueenFromD4ToD5() {
        
        kQueenValue >> D5
        
        -kQueenValue > (D4 > D5)
    }
    
    func testCaptureBlackQueenFromD4ToE5ToF4() {
        
        kQueenValue >> E5
        kQueenValue >> F4
        
        (-kQueenValue > (D4 > E5)) > F4
    }
    
    func testCaptureBlackQueenFromD4ToD5ToE5() {
        
        kQueenValue >> D5
        kQueenValue >> E5
        
        (-kQueenValue > (D4 > D5)) > E5
    }
    
    func testCaptureBlackQueenFromF6ToG5() {
        
        kQueenValue >> G5
        
        -kQueenValue > (F6 > G5)
    }
    
    func testCaptureBlackQueenFromF6ToG5ToH4() {
        
        kQueenValue >> G5
        kQueenValue >> H4
        
        (-kQueenValue > (F6 > G5)) > H4
    }
    
    func testCaptureBlackQueenFromA1ToH8() {
        
        kQueenValue >> H8
        
        -kQueenValue > (A1 > H8)
    }
    
    func testCaptureBlackQueenFromH1ToA8() {
        
        kQueenValue >> A8
        
        -kQueenValue > (H1 > A8)
    }
    
    func testCaptureBlackQueenFromF6ToF1() {
        
        kQueenValue >> F1
        
        -kQueenValue > (F6 > F1)
    }
    
    func testCaptureBlackQueenFromF6ToF2ToA2() {
        
        kQueenValue >> A2
        
        (-kQueenValue > (F6 > F2)) > A2
    }
}