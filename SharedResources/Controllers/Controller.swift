//
//  Controller.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Controller {
    
    let gameLogic: GameLogic
    let view: View
    
    let isGUIViewAvailable: Bool
    
    init(guiView: View?) {
        
        gameLogic = GameLogic(isWhitePlayerAI: true, isBlackPlayerAI: true)
        
        if let view: View = guiView {
            
            self.view = view
            
            isGUIViewAvailable = true
            
        } else {
            
            view = CLIView()
            
            isGUIViewAvailable = false
        }
        
        if !isGUIViewAvailable {
            
            runEngine()
            
        } else {
            /**
             * RUN on SEPARATE THREAD
             */
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            
                self.runEngine()
            }
        }
    }
    
    func runEngine() {
        
        repeat {
            /**
             * IF the following CONDITIONS are TRUE, then AI MOVES
             */
            if (gameLogic.isAITurn() && gameLogic.move(gameLogic.generateMoveFromAI()))
                
                /**
                 * ELSE HUMAN MOVES
                 */
                || (!isGUIViewAvailable && gameLogic.move(view.input()!)) {
                
                /**
                 * RUN on MAIN THREAD
                 */
                
                if !isGUIViewAvailable {
                    
                    self.view.output()
                    
                } else {
                    
                    dispatch_async(dispatch_get_main_queue()) {
                        
                        /**
                         * DISPLAY OUTPUT on VIEW
                         */
                        self.view.output()
                    }
                }
            }
        } while !self.isGUIViewAvailable
    }
}