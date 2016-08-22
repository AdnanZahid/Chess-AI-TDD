//
//  RookBoardOperationsTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class RookBoardOperationsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testGetWhiteRookOnD4() {
        
        kRookValue ?? D4
    }
    
    func testPutWhiteRookOnD4() {
        
        kRookValue >> D4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testGetBlackRookOnD4() {
        
        -kRookValue ?? D4
    }
    
    func testPutBlackRookOnD4() {
        
        -kRookValue >> D4
    }
}