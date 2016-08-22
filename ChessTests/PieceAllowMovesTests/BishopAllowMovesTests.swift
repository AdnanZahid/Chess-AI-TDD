//
//  BishopAllowMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class BishopAllowMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testMoveWhiteBishopFromA1ToH8() {
        
        kBishopValue > (A1 > H8)
    }
    
    func testMoveWhiteBishopFromH1ToA8() {
        
        kBishopValue > (H1 > A8)
    }
    
    func testMoveWhiteBishopFromD4ToE5ToF4() {
        
        (kBishopValue > (D4 > E5)) > F4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testMoveBlackBishopFromA1ToH8() {
        
        -kBishopValue > (A1 > H8)
    }
    
    func testMoveBlackBishopFromH1ToA8() {
        
        -kBishopValue > (H1 > A8)
    }
    
    func testMoveBlackBishopFromD4ToE5ToF4() {
        
        (-kBishopValue > (D4 > E5)) > F4
    }
}
