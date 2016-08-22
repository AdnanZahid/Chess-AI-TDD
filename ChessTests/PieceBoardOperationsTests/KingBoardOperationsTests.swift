//
//  KingBoardOperationsTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KingBoardOperationsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testGetWhiteKingOnD4() {
        
        kKingValue ?? D4
    }
    
    func testPutWhiteKingOnD4() {
        
        kKingValue >> D4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testGetBlackKingOnD4() {
        
        -kKingValue ?? D4
    }
    
    func testPutBlackKingOnD4() {
        
        -kKingValue >> D4
    }
}
