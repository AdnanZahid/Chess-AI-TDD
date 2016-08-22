//
//  PawnCapturesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class PawnCapturesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testCaptureWhitePawnFromA2ToA4() {
        
        -kPawnValue >> B3
        
        kPawnValue > (A2 > B3)
    }
    
    func testCaptureWhitePawnFromA2ToA4ToA5() {
        
        -kPawnValue >> B5
        
        (kPawnValue > (A2 > A4)) > B5
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testCaptureBlackPawnFromG7ToG5() {
        
        kPawnValue >> H6
        
        -kPawnValue > (G7 > H6)
    }
    
    func testCaptureBlackPawnFromG7ToG5ToG4() {
        
        kPawnValue >> F4
        
        (-kPawnValue > (G7 > G5)) > F4
    }
}