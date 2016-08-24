//
//  GameLogic.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class GameLogic: InputHandler {
    
    weak var inputHandlerDelegate: InputHandlerDelegate?
    
    let whitePlayer: Player
    let blackPlayer: Player
    
    var currentPlayer: Player
    
    init(isWhitePlayerAI: Bool, isBlackPlayerAI: Bool) {
        
        if isWhitePlayerAI {
            
            whitePlayer = AIPlayer(color: Color.white)
            
        } else {
            
            whitePlayer = Player(color: Color.white)
        }
        
        if isBlackPlayerAI {
            
            blackPlayer = AIPlayer(color: Color.black)
            
        } else {
            
            blackPlayer = Player(color: Color.black)
        }
        
        whitePlayer.opponent = blackPlayer
        blackPlayer.opponent = whitePlayer
        
        currentPlayer = whitePlayer
    }
    
    func move(move: Move) -> Bool {
        
        var result: Bool = false
        
        if currentPlayer.movePiece(move, checkCurrentTurn: true) {
            
            changeTurn()
            
            result = true
        }
        
        return result
    }
    
    func changeTurn() {
        
        currentPlayer = currentPlayer.opponent!
        
        Board.sharedInstance.currentTurnColor = currentPlayer.color
    }
    
    func isAITurn() -> Bool {
        
        return currentPlayer.isAI
    }
    
    func input() {
        
        inputHandlerDelegate?.didTakeInput(currentPlayer.generateMove()!)
    }
}