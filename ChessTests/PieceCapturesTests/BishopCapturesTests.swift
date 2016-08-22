//
//  BishopCapturesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class BishopCapturesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testCaptureWhiteBishopFromA1ToH8() {
        
        -kBishopValue >> H8
        
        kBishopValue > (A1 > H8)
    }
    
    func testCaptureWhiteBishopFromH1ToA8() {
        
        -kBishopValue >> A8
        
        kBishopValue > (H1 > A8)
    }
    
    func testCaptureWhiteBishopFromD4ToE5ToF4() {
        
        -kBishopValue >> E5
        -kBishopValue >> F4
        
        (kBishopValue > (D4 > E5)) > F4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testCaptureBlackBishopFromA1ToH8() {
        
        kBishopValue >> H8
        
        -kBishopValue > (A1 > H8)
    }
    
    func testCaptureBlackBishopFromH1ToA8() {
        
        kBishopValue >> A8
        
        -kBishopValue > (H1 > A8)
    }
    
    func testCaptureBlackBishopFromD4ToE5ToF4() {
        
        kBishopValue >> E5
        kBishopValue >> F4
        
        (-kBishopValue > (D4 > E5)) > F4
    }
}
