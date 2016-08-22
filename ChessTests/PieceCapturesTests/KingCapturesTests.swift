//
//  KingCapturesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KingCapturesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testCaptureWhiteKingFromD4ToD5() {
        
        -kBishopValue >> D5
        
        kKingValue > (D4 > D5)
    }
    
    func testCaptureWhiteKingFromB4ToC5ToC6() {
        
        -kBishopValue >> C5
        -kBishopValue >> C6
        
        (kKingValue > (B4 > C5)) > C6
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testCaptureBlackKingFromD4ToD5() {
        
        kBishopValue >> D5
        
        -kKingValue > (D4 > D5)
    }
    
    func testCaptureBlackKingFromB4ToC5ToD4() {
        
        kBishopValue >> C5
        kBishopValue >> D4
        
        (-kKingValue > (B4 > C5)) > D4
    }
}
