//
//  CombinedKnightTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class CombinedKnightTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    /////////////////////////////
    // WHITE KNIGHT TEST CASES //
    /////////////////////////////
    
    func testMoveWhiteKnightFromD4ToE6() {
        
        kKnightValue > (D4 > E6)
    }
    
    func testMoveWhiteKnightFromD4ToC2ToE1() {
        
        (kKnightValue > (D4 > C2)) > E1
    }
    
    func testGetWhiteKnightOnD4() {
        
        kKnightValue ?? D4
    }
    
    func testPutWhiteKnightOnD4() {
        
        kKnightValue >> D4
    }
    
    /////////////////////////////
    // BLACK KNIGHT TEST CASES //
    /////////////////////////////
    
    func testMoveBlackKnightValueFromD4ToE6() {
        
        -kKnightValue > (D4 > E6)
    }
    
    func testMoveBlackKnightValueFromD4ToC2ToE1() {
        
        (-kKnightValue > (D4 > C2)) > E1
    }
    
    func testGetBlackKnightValueOnD4() {
        
        -kKnightValue ?? D4
    }
    
    func testPutBlackKnightValueOnD4() {
        
        -kKnightValue >> D4
    }
}
