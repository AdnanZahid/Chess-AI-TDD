//
//  PawnBoardOperationsTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class PawnBoardOperationsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testGetWhitePawnOnD4() {
        
        kPawnValue ?? D4
    }
    
    func testPutWhitePawnOnD4() {
        
        kPawnValue >> D4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testGetBlackPawnOnD4() {
        
        -kPawnValue ?? D4
    }
    
    func testPutBlackPawnOnD4() {
        
        -kPawnValue >> D4
    }
}