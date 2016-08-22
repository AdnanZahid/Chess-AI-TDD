//
//  QueenBoardOperationsTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class QueenBoardOperationsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testGetWhiteQueenOnD4() {
        
        kQueenValue ?? D4
    }
    
    func testPutWhiteQueenOnD4() {
        
        kQueenValue >> D4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testGetBlackQueenOnD4() {
        
        -kQueenValue ?? D4
    }
    
    func testPutBlackQueenOnD4() {
        
        -kQueenValue >> D4
    }
}