//
//  BishopPossibleMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class BishopPossibleMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testPossibleMovesWhiteBishopFromA1() {
        
        let possibleMoves: [Square] = ~(kBishopValue >> A1)
        
        let comparisonMoves: [Square] = [B2, C3, D4, E5, F6, G7, H8]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhiteBishopFromD5() {
        
        let possibleMoves: [Square] = ~(kBishopValue >> D5)
        
        let comparisonMoves: [Square] = [E6, F7, G8, E4, F3, G2, H1, C6, B7, A8, C4, B3, A2]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testPossibleMovesBlackBishopFromH8() {
        
        let possibleMoves: [Square] = ~(-kBishopValue >> H1)
        
        let comparisonMoves: [Square] = [G2, F3, E4, D5, C6, B7, A8]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackBishopFromE4() {
        
        let possibleMoves: [Square] = ~(-kBishopValue >> E4)
        
        let comparisonMoves: [Square] = [F5, G6, H7, F3, G2, H1, D5, C6, B7, A8, D3, C2, B1]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
}