//
//  Player.swift
//  Chess
//
//  Created by Adnan Zahid on 8/15/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Player {
    
    var isAI: Bool = false
    var color: Color
    var piecesList: [Piece] = []
    var opponent: Player?
    
    init(color: Color) {
        
        self.color = color
        
        Board.sharedInstance.setupPieceBoard(color)
    }
    
    func addPiece(piece: Piece) {
    
        piecesList.append(piece)
    }
    
    func removePiece(piece: Piece) {
        
        piecesList.remove(piece)
    }
    
    func generateMove() -> Move? {
        
        return nil
    }
}