//
//  PawnTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class PawnTests: XCTestCase {
    
    override func tearDown() {
        super.tearDown()
        
        Board.sharedInstance.setupPieceBoard()
    }
    
    ///////////////////////////
    // WHITE PAWN TEST CASES //
    ///////////////////////////
    
    func testMoveWhitePawnFromA2ToA4() {
        
        kPawn > (A2 > A4)
    }
    
    func testMoveWhitePawnFromA2ToA4ToA5() {
        
        (kPawn > (A2 > A4)) > A5
    }
    
    func testGetWhitePawnOnD4() {
        
        kPawn ?? D4
    }
    
    func testPutWhitePawnOnD4() {
        
        kPawn >> D4
    }
    
    ///////////////////////////
    // BLACK PAWN TEST CASES //
    ///////////////////////////
    
    func testMoveBlackPawnFromG7ToG5() {
        
        -kPawn > (G7 > G5)
    }
    
    func testMoveBlackPawnFromG7ToG5ToG4() {
        
        (-kPawn > (G7 > G5)) > G4
    }
    
    func testGetBlackPawnOnD4() {
        
        -kPawn ?? D4
    }
    
    func testPutBlackPawnOnD4() {
        
        -kPawn >> D4
    }
}