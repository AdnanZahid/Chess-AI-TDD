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
    
    let isGUIViewAvailable: Bool
    
    init(guiView: OutputHandler?) {
        
        /**
         * SET GAMELOGIC with AI or HUMAN PLAYERS
         */
        gameLogic = GameLogic(isWhitePlayerAI: true, isBlackPlayerAI: true)
        
        if let outputHandler: OutputHandler = guiView {
            
            /**
             * SET GUI as VIEW
             */
            self.outputHandler = outputHandler
            
            isGUIViewAvailable = true
            
        } else {
            
            /**
             * SET CLI as VIEW
             */
            outputHandler = CLIView()
            
            isGUIViewAvailable = false
        }
        
        /**
         * CHOSE whether to RUN CHESS ENGINE on MAIN THREAD OR A SEPARATE ONE
         */
        selectThreadAndRunEngine()
    }
    
    /**
     * CHOSE whether to RUN CHESS ENGINE on MAIN THREAD OR A SEPARATE ONE
     */
    func selectThreadAndRunEngine() {
        
        if !isGUIViewAvailable {
            
            /**
             * RUN CHESS ENGINE
             */
            runEngine()
            
        } else {
            /**
             * RUN on SEPARATE THREAD
             */
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
                
                /**
                 * RUN CHESS ENGINE
                 */
                self.runEngine()
            }
        }
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
    
    func output() {
        
        /**
         * SHOW OUTPUT on VIEW
         */
        if !isGUIViewAvailable {
            
            outputHandler.output()
            
        } else {
            
            /**
             * RUN on MAIN THREAD
             */
            dispatch_async(dispatch_get_main_queue()) {
                
                /**
                 * DISPLAY OUTPUT on VIEW
                 */
                self.outputHandler.output()
            }
        }
    }
    
    /**
     * PlAY HUMAN MOVE
     */
    func didTakeInput(move: Move) {
        
        gameLogic.move(move)
        
        /**
         * SHOW OUTPUT on VIEW
         */
        output()
        
        /**
         * CHOSE whether to RUN CHESS ENGINE on MAIN THREAD OR A SEPARATE ONE
         */
        selectThreadAndRunEngine()
    }
}