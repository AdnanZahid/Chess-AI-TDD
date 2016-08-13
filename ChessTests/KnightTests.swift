//
//  KnightTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KnightTests: XCTestCase {
    
    override func tearDown() {
        super.tearDown()
        
        Board.sharedInstance.setupPieceBoard()
    }
    
    /////////////////////////////
    // WHITE KNIGHT TEST CASES //
    /////////////////////////////
    
    func testMoveWhiteKnightFromD4ToE6() {
        
        kKnight > (D4 > E6)
    }
    
    func testMoveWhiteKnightFromD4ToC2ToE1() {
        
        (kKnight > (D4 > C2)) > E1
    }
    
    func testGetWhiteKnightOnD4() {
        
        kKnight ?? D4
    }
    
    func testPutWhiteKnightOnD4() {
        
        kKnight >> D4
    }
    
    /////////////////////////////
    // BLACK KNIGHT TEST CASES //
    /////////////////////////////
    
    func testMoveBlackKnightFromD4ToE6() {
        
        -kKnight > (D4 > E6)
    }
    
    func testMoveBlackKnightFromD4ToC2ToE1() {
        
        (-kKnight > (D4 > C2)) > E1
    }
    
    func testGetBlackKnightOnD4() {
        
        -kKnight ?? D4
    }
    
    func testPutBlackKnightOnD4() {
        
        -kKnight >> D4
    }
}
