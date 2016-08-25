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
        
        /**
         * SET GAMELOGIC with AI or HUMAN PLAYERS
         */
        gameLogic = GameLogic(isWhitePlayerAI: true, isBlackPlayerAI: true)
        
        /**
         * SET VIEW as OUTPUTHANDLER
         */
        outputHandler = view
        
        /**
         * SET UP VIEW
         */
        outputHandler.setup()
        
        /**
         * CHOSE whether to RUN CHESS ENGINE on MAIN QUEUE OR A SEPARATE ONE
         */
        selectQueueAndRun(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), action: { self.runEngine() })
    }
    
    /**
     * RUN CHESS ENGINE
     */
    func runEngine() {
        
        /**
         * CHECK if it is AI TURN
         */
        if gameLogic.isAITurn() {
            
            /**
             * ASSIGN GAMELOGIC to INPUTHANDLER - FOR AI MOVES
             */
            inputHandler = gameLogic
            
        /**
         * ELSE it is HUMAN TURN
         */
        } else {
            
            /**
             * ASSIGN OUTPUTHANDLER (VIEW) to INPUTHANDLER - FOR HUMAN MOVES
             */
            inputHandler = outputHandler
        }
        
        /**
         * SET SELF as VIEW DELEGATE
         */
        inputHandler?.inputHandlerDelegate = self
        
        /**
         * TAKE INPUT from INPUTHANDLER
         */
        inputHandler?.input()
    }
    
    /**
     * PlAY HUMAN MOVE
     */
    func didTakeInput(move: Move) {
        
        /**
         * TELL GAMELOGIC to MAKE the MOVE if VALID
         */
        if gameLogic.move(move) {
        
            /**
             * SHOW OUTPUT on VIEW
             */
            selectQueueAndRun(dispatch_get_main_queue(), action: { self.outputHandler.output(move) })
            
        } else {
            
            /**
             * CANCEL MOVE on VIEW (PUT PIECE DOWN)
             */
            selectQueueAndRun(dispatch_get_main_queue(), action: { self.outputHandler.cancelMove() })
        }
        
        /**
         * CHOSE whether to RUN CHESS ENGINE on MAIN QUEUE OR A SEPARATE ONE
         */
        selectQueueAndRun(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), action: { self.runEngine() })
    }
    
    /**
     * CHOSE whether to RUN CHESS ENGINE on MAIN QUEUE OR A SEPARATE ONE
     */
    func selectQueueAndRun(queue: dispatch_queue_t, action: () -> ()) {
        
        if !outputHandler.isGUIViewAvailable {
            
            /**
             * RUN ACTION
             */
            action()
            
        } else {
            
            /**
             * RUN on the following QUEUE
             */
            dispatch_async(queue) {
                
                /**
                 * RUN ACTION
                 */
                action()
            }
        }
    }
}