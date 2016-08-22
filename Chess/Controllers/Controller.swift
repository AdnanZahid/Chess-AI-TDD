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
    
    init() {
        
        gameLogic = GameLogic(isWhitePlayerAI: true, isBlackPlayerAI: false)
        
        view = View()
        
        while(true) {
            
            view.output()
            
            if gameLogic.isAITurn() {
                
                gameLogic.move(gameLogic.generateMoveFromAI())
                
            } else {
                
                gameLogic.move(view.input()!)
            }
        }
    }
}