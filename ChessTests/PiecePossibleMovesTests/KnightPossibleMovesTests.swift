//
//  KnightPossibleMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class KnightPossibleMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testPossibleMovesWhiteKnightFromA1() {
        
        let possibleMoves: [Square] = ~(kKnightValue >> A1)
        
        let comparisonMoves: [Square] = [B3, C2]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhiteKnightFromD5() {
        
        let possibleMoves: [Square] = ~(kKnightValue >> D5)
        
        let comparisonMoves: [Square] = [E7, F6, C7, B6, E3, F4, C3, B4]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testPossibleMovesBlackKnightFromH8() {
        
        let possibleMoves: [Square] = ~(-kKnightValue >> H1)
        
        let comparisonMoves: [Square] = [G3, F2]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackKnightFromE4() {
        
        let possibleMoves: [Square] = ~(-kKnightValue >> E4)
        
        let comparisonMoves: [Square] = [F6, G5, D6, C5, F2, G3, D2, C3]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
}