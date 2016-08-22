//
//  KnightAllowMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KnightAllowMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testMoveWhiteKnightFromD4ToE6() {
        
        kKnightValue > (D4 > E6)
    }
    
    func testMoveWhiteKnightFromD4ToC2ToE1() {
        
        (kKnightValue > (D4 > C2)) > E1
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testMoveBlackKnightFromD4ToE6() {
        
        -kKnightValue > (D4 > E6)
    }
    
    func testMoveBlackKnightFromD4ToC2ToE1() {
        
        (-kKnightValue > (D4 > C2)) > E1
    }
}
