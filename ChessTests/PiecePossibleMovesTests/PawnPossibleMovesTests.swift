//
//  PawnPossibleMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class PawnPossibleMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testPossibleMovesWhitePawnFromA2() {
        
        let possibleMoves: [Square] = ~(kPawnValue >> A2)
        
        let comparisonMoves: [Square] = [A3, A4, B3]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhitePawnFromD3() {
        
        let possibleMoves: [Square] = ~(kPawnValue >> D3)
        
        let comparisonMoves: [Square] = [D4, D5, C4, E4]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testPossibleMovesBlackPawnFromH7() {
        
        let possibleMoves: [Square] = ~(-kPawnValue >> H7)
        
        let comparisonMoves: [Square] = [H6, H5, G6]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackPawnFromE6() {
        
        let possibleMoves: [Square] = ~(-kPawnValue >> E6)
        
        let comparisonMoves: [Square] = [E5, E4, D5, F5]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
}