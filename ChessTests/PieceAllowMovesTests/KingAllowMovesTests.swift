//
//  KingAllowMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KingAllowMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testMoveWhiteKingFromD4ToD5() {
        
        kKingValue > (D4 > D5)
    }
    
    func testMoveWhiteKingFromB4ToC5ToC6() {
        
        (kKingValue > (B4 > C5)) > C6
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testMoveBlackKingFromD4ToD5() {
        
        -kKingValue > (D4 > D5)
    }
    
    func testMoveBlackKingFromB4ToC5ToD4() {
        
        (-kKingValue > (B4 > C5)) > D4
    }
}
