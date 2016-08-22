//
//  KingPossibleMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KingPossibleMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testPossibleMovesWhiteKingFromA1() {
        
        let possibleMoves: [Square] = ~(kKingValue >> A1)
        
        let comparisonMoves: [Square] = [B2, B1, A2]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhiteKingFromD5() {
        
        let possibleMoves: [Square] = ~(kKingValue >> D5)
        
        let comparisonMoves: [Square] = [E6, E4, C6, C4, E5, D6, C5, D4]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testPossibleMovesBlackKingFromH8() {
        
        let possibleMoves: [Square] = ~(-kKingValue >> H1)
        
        let comparisonMoves: [Square] = [G2, H2, G1]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackKingFromE4() {
        
        let possibleMoves: [Square] = ~(-kKingValue >> E4)
        
        let comparisonMoves: [Square] = [F5, F3, D5, D3, F4, E5, D4, E3]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
}