//
//  GameLogicTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class GameLogicTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testChangeTurn() {
        
        let gameLogic: GameLogic = GameLogic(isWhitePlayerAI: false, isBlackPlayerAI: false)
        
        XCTAssertTrue(gameLogic.currentPlayer.color == Color.white)
        
        gameLogic.changeTurn()
        
        XCTAssertTrue(gameLogic.currentPlayer.color == Color.black)
        
        gameLogic.changeTurn()
        
        XCTAssertTrue(gameLogic.currentPlayer.color == Color.white)
    }
    
    func testChangeBoardColor() {
        
        let gameLogic: GameLogic = GameLogic(isWhitePlayerAI: false, isBlackPlayerAI: false)
        
        XCTAssertTrue(Board.sharedInstance.currentTurnColor == Color.white)
        
        gameLogic.changeTurn()
        
        XCTAssertTrue(Board.sharedInstance.currentTurnColor == Color.black)
        
        gameLogic.changeTurn()
        
        XCTAssertTrue(Board.sharedInstance.currentTurnColor == Color.white)
    }
    
    func testIsAI() {
        
        let gameLogic: GameLogic = GameLogic(isWhitePlayerAI: true, isBlackPlayerAI: true)
        
        XCTAssertTrue(gameLogic.whitePlayer.isAI == true)
        
        XCTAssertTrue(gameLogic.blackPlayer.isAI == true)
    }
    
    func testIsHuman() {
        
        let gameLogic: GameLogic = GameLogic(isWhitePlayerAI: false, isBlackPlayerAI: false)
        
        XCTAssertTrue(gameLogic.whitePlayer.isAI == false)
        
        XCTAssertTrue(gameLogic.blackPlayer.isAI == false)
    }
    
    func testIsAITurn() {
        
        let gameLogic: GameLogic = GameLogic(isWhitePlayerAI: false, isBlackPlayerAI: true)
        
        XCTAssertTrue(gameLogic.isAITurn() == false)
        
        gameLogic.changeTurn()
        
        XCTAssertTrue(gameLogic.isAITurn() == true)
    }
}