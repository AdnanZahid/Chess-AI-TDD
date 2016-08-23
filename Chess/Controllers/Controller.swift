//
//  Controller.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Controller {
    
    let gameLogic: GameLogic
    let view: View
    
    init() {
        
        gameLogic = GameLogic(isWhitePlayerAI: false, isBlackPlayerAI: true)
        
        view = View()
        
        while(true) {
            
            /**
             * IF the following CONDITIONS are TRUE, then AI MOVES
             */
            if (gameLogic.isAITurn() && gameLogic.move(gameLogic.generateMoveFromAI()))
                
                /**
                 * ELSE HUMAN MOVES
                 */
                || gameLogic.move(view.input()!) {
                
                view.output()
            }
        }
    }
}