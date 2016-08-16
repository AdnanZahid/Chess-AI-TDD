//
//  CombinedKingTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class CombinedKingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////////////////////
    // WHITE KING TEST CASES //
    ///////////////////////////
    
    func testMoveWhiteKingFromD4ToD5() {
        
        kKingValue > (D4 > D5)
    }
    
    func testMoveWhiteKingFromB4ToC5ToC6() {
        
        (kKingValue > (B4 > C5)) > C6
    }
    
    func testGetWhiteKingOnD4() {
        
        kKingValue ?? D4
    }
    
    func testPutWhiteKingOnD4() {
        
        kKingValue >> D4
    }
    
    ///////////////////////////
    // BLACK KING TEST CASES //
    ///////////////////////////
    
    func testMoveBlackKingValueFromD4ToD5() {
        
        -kKingValue > (D4 > D5)
    }
    
    func testMoveBlackKingValueFromB4ToC5ToD4() {
        
        (-kKingValue > (B4 > C5)) > D4
    }
    
    func testGetBlackKingValueOnD4() {
        
        -kKingValue ?? D4
    }
    
    func testPutBlackKingValueOnD4() {
        
        -kKingValue >> D4
    }
}
