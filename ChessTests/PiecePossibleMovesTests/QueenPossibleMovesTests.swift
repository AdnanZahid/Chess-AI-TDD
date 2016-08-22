//
//  QueenPossibleMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class QueenPossibleMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testPossibleMovesWhiteQueenFromA1() {
        
        let possibleMoves: [Square] = ~(kQueenValue >> A1)
        
        let comparisonMoves: [Square] = [B2, C3, D4, E5, F6, G7, H8, B1, C1, D1, E1, F1, G1, H1, A2, A3, A4, A5, A6, A7, A8]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhiteQueenFromD5() {
        
        let possibleMoves: [Square] = ~(kQueenValue >> D5)
        
        let comparisonMoves: [Square] = [E6, F7, G8, E4, F3, G2, H1, C6, B7, A8, C4, B3, A2, E5, F5, G5, H5, D6, D7, D8, C5, B5, A5, D4, D3, D2, D1]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhiteQueenFromD4FriendlyFire() {
        
        kQueenValue >> E5
        kQueenValue >> E3
        kQueenValue >> C5
        kQueenValue >> C3
        
        kQueenValue >> E4
        kQueenValue >> D5
        kQueenValue >> C4
        kQueenValue >> D3
        
        let possibleMoves: [Square] = ~(kQueenValue >> D4)
        
        let comparisonMoves: [Square] = []
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesWhiteQueenFromD4EnemyFire() {
        
        -kQueenValue >> E5
        -kQueenValue >> E3
        -kQueenValue >> C5
        -kQueenValue >> C3
        
        -kQueenValue >> E4
        -kQueenValue >> D5
        -kQueenValue >> C4
        -kQueenValue >> D3
        
        let possibleMoves: [Square] = ~(kQueenValue >> D4)
        
        let comparisonMoves: [Square] = [E5, E3, C5, C3, E4, D5, C4, D3]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testPossibleMovesBlackQueenFromH8() {
        
        let possibleMoves: [Square] = ~(-kQueenValue >> H1)
        
        let comparisonMoves: [Square] = [G2, F3, E4, D5, C6, B7, A8, H2, H3, H4, H5, H6, H7, H8, G1, F1, E1, D1, C1, B1, A1]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackQueenFromE4() {
        
        let possibleMoves: [Square] = ~(-kQueenValue >> E4)
        
        let comparisonMoves: [Square] = [F5, G6, H7, F3, G2, H1, D5, C6, B7, A8, D3, C2, B1, F4, G4, H4, E5, E6, E7, E8, D4, C4, B4, A4, E3, E2, E1]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackQueenFromDE6FriendlyFire() {
        
        -kQueenValue >> F7
        -kQueenValue >> F5
        -kQueenValue >> D7
        -kQueenValue >> D5
        
        -kQueenValue >> F6
        -kQueenValue >> E7
        -kQueenValue >> D6
        -kQueenValue >> E5
        
        let possibleMoves: [Square] = ~(-kQueenValue >> E6)
        
        let comparisonMoves: [Square] = []
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
    
    func testPossibleMovesBlackQueenFromDE6EnemyFire() {
        
        kQueenValue >> F7
        kQueenValue >> F5
        kQueenValue >> D7
        kQueenValue >> D5
        
        kQueenValue >> F6
        kQueenValue >> E7
        kQueenValue >> D6
        kQueenValue >> E5
        
        let possibleMoves: [Square] = ~(-kQueenValue >> E6)
        
        let comparisonMoves: [Square] = [F7, F5, D7, D5, F6, E7, D6, E5]
        
        XCTAssertTrue(possibleMoves == comparisonMoves)
    }
}