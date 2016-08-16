//
//  SoloPawnTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class SoloPawnTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////////////////////
    // WHITE PAWN TEST CASES //
    ///////////////////////////
    
    func testMoveWhitePawnFromA2ToA4() {
        
        kPawnValue > (A2 > A4)
    }
    
    func testMoveWhitePawnFromA2ToA4ToA5() {
        
        (kPawnValue > (A2 > A4)) > A5
    }
    
    func testGetWhitePawnOnD4() {
        
        kPawnValue ?? D4
    }
    
    func testPutWhitePawnOnD4() {
        
        kPawnValue >> D4
    }
    
    ///////////////////////////
    // BLACK PAWN TEST CASES //
    ///////////////////////////
    
    func testMoveBlackPawnValueFromG7ToG5() {
        
        -kPawnValue > (G7 > G5)
    }
    
    func testMoveBlackPawnValueFromG7ToG5ToG4() {
        
        (-kPawnValue > (G7 > G5)) > G4
    }
    
    func testGetBlackPawnValueOnD4() {
        
        -kPawnValue ?? D4
    }
    
    func testPutBlackPawnValueOnD4() {
        
        -kPawnValue >> D4
    }
}