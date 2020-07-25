//
//  Controller.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Controller: InputHandlerDelegate {
    
    let gameLogic: GameLogic
    let outputHandler: OutputHandler
    var inputHandler: InputHandler?
    
    init(view: OutputHandler) {
        gameLogic = GameLogic(isWhitePlayerAI: true, isBlackPlayerAI: true)
        outputHandler = view
        outputHandler.setup()
        selectQueueAndRun(DispatchQueue.global(qos: .default), action: { self.runEngine() })
    }
    
    func runEngine() {
        inputHandler = gameLogic.isAITurn() ? gameLogic : outputHandler
        inputHandler?.inputHandlerDelegate = self
        inputHandler?.input()
    }
    
    func didTakeInput(_ move: Move) {
        if gameLogic.move(move) {
            selectQueueAndRun(DispatchQueue.main, action: { self.outputHandler.output(move) })
        } else {
            selectQueueAndRun(DispatchQueue.main, action: { self.outputHandler.cancelMove() })
        }
        selectQueueAndRun(DispatchQueue.global(qos: .default), action: { self.runEngine() })
    }
    
    func selectQueueAndRun(_ queue: DispatchQueue, action: @escaping () -> ()) {
        if !outputHandler.isGUIViewAvailable {
            action()
        } else {
            queue.async {
                action()
            }
        }
    }
}
