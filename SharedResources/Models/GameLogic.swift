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
        whitePlayer = isWhitePlayerAI ? AIPlayer(color: Color.white) : Player(color: Color.white)
        blackPlayer = isBlackPlayerAI ? AIPlayer(color: Color.black) : Player(color: Color.black)
        whitePlayer.opponent = blackPlayer
        blackPlayer.opponent = whitePlayer
        currentPlayer = whitePlayer
    }
    
    func move(_ move: Move) -> Bool {
        guard currentPlayer.movePiece(move, checkCurrentTurn: true) else { return false }
        changeTurn()
        return true
    }
    
    func changeTurn() {
        currentPlayer = currentPlayer.opponent!
    }
    
    func isAITurn() -> Bool {
        return currentPlayer.isAI
    }
    
    func input() {
        inputHandlerDelegate?.didTakeInput(currentPlayer.generateMove()!)
    }
}
