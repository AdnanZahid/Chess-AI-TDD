//
//  KingBlockMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KingBlockMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testBlockWhiteKingFromD4ToD5() {
        
        kKingValue >> D5
        
        kKingValue !== (D4 > D5)
    }
    
    func testBlockWhiteKingFromB4ToC5ToC6() {
        
        kKingValue >> C5
        kKingValue >> C6
        
        (kKingValue !== (B4 > C5)) !== C6
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testBlockBlackKingFromD4ToD5() {
        
        -kKingValue >> D5
        
        -kKingValue !== (D4 > D5)
    }
    
    func testBlockBlackKingFromB4ToC5ToD4() {
        
        -kKingValue >> C5
        -kKingValue >> D4
        
        (-kKingValue !== (B4 > C5)) !== D4
    }
}