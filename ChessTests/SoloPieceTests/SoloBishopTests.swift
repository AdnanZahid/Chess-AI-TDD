//
//  SoloBishopTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class SoloBishopTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    /////////////////////////////
    // WHITE BISHOP TEST CASES //
    /////////////////////////////
    
    func testMoveWhiteBishopFromA1ToH8() {
        
        kBishopValue > (A1 > H8)
    }
    
    func testMoveWhiteBishopFromH1ToA8() {
        
        kBishopValue > (H1 > A8)
    }
    
    func testMoveWhiteBishopFromD4ToE5ToF4() {
        
        (kBishopValue > (D4 > E5)) > F4
    }
    
    func testGetWhiteBishopOnD4() {
        
        kBishopValue ?? D4
    }
    
    func testPutWhiteBishopOnD4() {
        
        kBishopValue >> D4
    }
    
    /////////////////////////////
    // BLACK BISHOP TEST CASES //
    /////////////////////////////
    
    func testMoveBlackBishopValueFromA1ToH8() {
        
        kBishopValue > (A1 > H8)
    }
    
    func testMoveBlackBishopValueFromH1ToA8() {
        
        kBishopValue > (H1 > A8)
    }
    
    func testMoveBlackBishopValueFromD4ToE5ToF4() {
        
        (kBishopValue > (D4 > E5)) > F4
    }
}
