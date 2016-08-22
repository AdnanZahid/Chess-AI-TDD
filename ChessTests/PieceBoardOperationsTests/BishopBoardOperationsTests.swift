//
//  BishopBoardOperationsTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class BishopBoardOperationsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testGetWhiteBishopOnD4() {
        
        kBishopValue ?? D4
    }
    
    func testPutWhiteBishopOnD4() {
        
        kBishopValue >> D4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testGetBlackBishopOnD4() {
        
        -kBishopValue ?? D4
    }
    
    func testPutBlackBishopOnD4() {
        
        -kBishopValue >> D4
    }
}
