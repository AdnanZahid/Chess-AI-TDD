//
//  BishopTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class BishopTests: XCTestCase {
    
    override func tearDown() {
        super.tearDown()
        
        Board.sharedInstance.setupPieceBoard()
    }
    
    /////////////////////////////
    // WHITE BISHOP TEST CASES //
    /////////////////////////////
    
    func testMoveWhiteBishopFromA1ToH8() {
        
        kBishop > (A1 > H8)
    }
    
    func testMoveWhiteBishopFromH1ToA8() {
        
        kBishop > (H1 > A8)
    }
    
    func testMoveWhiteBishopFromD4ToE5ToF4() {
        
        (kBishop > (D4 > E5)) > F4
    }
    
    func testGetWhiteBishopOnD4() {
        
        kBishop ?? D4
    }
    
    func testPutWhiteBishopOnD4() {
        
        kBishop >> D4
    }
    
    /////////////////////////////
    // BLACK BISHOP TEST CASES //
    /////////////////////////////
    
    func testMoveBlackBishopFromA1ToH8() {
        
        kBishop > (A1 > H8)
    }
    
    func testMoveBlackBishopFromH1ToA8() {
        
        kBishop > (H1 > A8)
    }
    
    func testMoveBlackBishopFromD4ToE5ToF4() {
        
        (kBishop > (D4 > E5)) > F4
    }
}
