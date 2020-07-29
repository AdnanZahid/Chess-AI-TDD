//
//  EvaluationValueHandler.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class EvaluationValueHandler {
    
    static func getEvaluationValue(_ piecesList: [Piece]) -> Int {
    
        var mobility = 0
        var value = 0
        
        for piece in piecesList {
            
//            if piece.captured == false {
                
//                mobility += (piece.moveStrategy?.getMobility(piece.position!))!
//                value += piece.value
//            }
        }
        
        return mobility + value
    }
}
