//
//  KnightBoardOperationsTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KnightBoardOperationsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testGetWhiteKnightOnD4() {
        
        kKnightValue ?? D4
    }
    
    func testPutWhiteKnightOnD4() {
        
        kKnightValue >> D4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testGetBlackKnightOnD4() {
        
        -kKnightValue ?? D4
    }
    
    func testPutBlackKnightOnD4() {
        
        -kKnightValue >> D4
    }
}
