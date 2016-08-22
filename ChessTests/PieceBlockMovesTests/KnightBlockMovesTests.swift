//
//  KnightBlockMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KnightBlockMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testBlockWhiteKnightFromD4ToE6() {
        
        kKnightValue >> E6
        
        kKnightValue !== (D4 > E6)
    }
    
    func testBlockWhiteKnightFromD4ToC2ToE1() {
        
        kKnightValue >> C2
        kKnightValue >> E1
        
        (kKnightValue !== (D4 > C2)) !== E1
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testBlockBlackKnightFromD4ToE6() {
        
        -kKnightValue >> E6
        
        -kKnightValue !== (D4 > E6)
    }
    
    func testBlockBlackKnightFromD4ToC2ToE1() {
        
        -kKnightValue >> C2
        -kKnightValue >> E1
        
        (-kKnightValue !== (D4 > C2)) !== E1
    }
}
