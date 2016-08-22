//
//  PawnBlockMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class PawnBlockMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testBlockWhitePawnFromA2ToA4() {
        
        kPawnValue >> A3
        
        kPawnValue !== (A2 > A4)
    }
    
    func testBlockWhitePawnFromA2ToA4ToA5() {
        
        kPawnValue >> A3
        kPawnValue >> A5
        
        (kPawnValue !== (A2 > A4)) != A5
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testBlockBlackPawnFromG7ToG5() {
        
        -kPawnValue >> G5
        
        -kPawnValue !== (G7 > G5)
    }
    
    func testBlockBlackPawnFromG7ToG5ToG4() {
        
        -kPawnValue >> G6
        -kPawnValue >> G4
        
        (-kPawnValue !== (G7 > G5)) !== G4
    }
}