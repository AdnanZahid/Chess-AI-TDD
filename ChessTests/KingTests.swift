//
//  KingTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KingTests: XCTestCase {
    
    override func tearDown() {
        super.tearDown()
        
        Board.sharedInstance.setupPieceBoard()
    }
    
    ///////////////////////////
    // WHITE KING TEST CASES //
    ///////////////////////////
    
    func testMoveWhiteKingFromD4ToD5() {
        
        kKing > (D4 > D5)
    }
    
    func testMoveWhiteKingFromB4ToC5ToC6() {
        
        (kKing > (B4 > C5)) > C6
    }
    
    func testGetWhiteKingOnD4() {
        
        kKing ?? D4
    }
    
    func testPutWhiteKingOnD4() {
        
        kKing >> D4
    }
    
    ///////////////////////////
    // BLACK KING TEST CASES //
    ///////////////////////////
    
    func testMoveBlackKingFromD4ToD5() {
        
        -kKing > (D4 > D5)
    }
    
    func testMoveBlackKingFromB4ToC5ToD4() {
        
        (-kKing > (B4 > C5)) > D4
    }
    
    func testGetBlackKingOnD4() {
        
        -kKing ?? D4
    }
    
    func testPutBlackKingOnD4() {
        
        -kKing >> D4
    }
}
