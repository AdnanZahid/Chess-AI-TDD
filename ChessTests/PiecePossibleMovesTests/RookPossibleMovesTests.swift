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
    
    func testPossibleMovesWhiteRookFromD4FriendlyFire() {
        
        kRookValue >> E4
        kRookValue >> D5
        kRookValue >> C4
        kRookValue >> D3
        
        let possibleMoves: [Square] = ~(kRookValue >> D4)
        
        let comparisonMoves: [Square] = []
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhiteRookFromD4EnemyFire() {
        
        -kRookValue >> E4
        -kRookValue >> D5
        -kRookValue >> C4
        -kRookValue >> D3
        
        let possibleMoves: [Square] = ~(kRookValue >> D4)
        
        let comparisonMoves: [Square] = [E4, D5, C4, D3]
        
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
    
    func testPossibleMovesBlackRookFromDE6FriendlyFire() {
        
        -kRookValue >> F6
        -kRookValue >> E7
        -kRookValue >> D6
        -kRookValue >> E5
        
        let possibleMoves: [Square] = ~(-kRookValue >> E6)
        
        let comparisonMoves: [Square] = []
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackRookFromDE6EnemyFire() {
        
        kRookValue >> F6
        kRookValue >> E7
        kRookValue >> D6
        kRookValue >> E5
        
        let possibleMoves: [Square] = ~(-kRookValue >> E6)
        
        let comparisonMoves: [Square] = [F6, E7, D6, E5]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
}