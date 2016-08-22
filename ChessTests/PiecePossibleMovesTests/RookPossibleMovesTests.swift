//
//  RookPossibleMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class RookPossibleMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testPossibleMovesWhiteRookFromA1() {
        
        let possibleMoves: [Square] = ~(kRookValue >> A1)
        
        let comparisonMoves: [Square] = [B1, C1, D1, E1, F1, G1, H1, A2, A3, A4, A5, A6, A7, A8]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testPossibleMovesBlackRookFromH8() {
        
        let possibleMoves: [Square] = ~(-kRookValue >> H1)
        
        let comparisonMoves: [Square] = [H2, H3, H4, H5, H6, H7, H8, G1, F1, E1, D1, C1, B1, A1]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
}