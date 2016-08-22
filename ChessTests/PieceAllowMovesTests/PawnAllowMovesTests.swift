//
//  PawnAllowMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class PawnAllowMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testMoveWhitePawnFromA2ToA4() {
        
        kPawnValue > (A2 > A4)
    }
    
    func testMoveWhitePawnFromA2ToA4ToA5() {
        
        (kPawnValue > (A2 > A4)) > A5
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testMoveBlackPawnFromG7ToG5() {
        
        -kPawnValue > (G7 > G5)
    }
    
    func testMoveBlackPawnFromG7ToG5ToG4() {
        
        (-kPawnValue > (G7 > G5)) > G4
    }
}