//
//  Player.swift
//  Chess
//
//  Created by Adnan Zahid on 8/15/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Player: PieceDelegate {
    
    var isAI: Bool = false
    var color: Color
    var piecesList: [Piece] = []
    weak var opponent: Player?
    
    init(color: Color) {
        
        self.color = color
        
        piecesList = Board.sharedInstance.setupPieceBoard(color, pieceDelegate: self)
    }
    
    func addPiece(piece: Piece) {
    
        piecesList.append(piece)
    }
    
    func removePiece(piece: Piece) {
        
        piecesList.remove(piece)
    }
    
    func movePiece(move: Move) -> Bool {
        
        var result: Bool = false
        
        if Board.sharedInstance.movePiece(move) {
            
            result = true
            
            Board.sharedInstance.evaluationValue = (EvaluationValueHandler.getEvaluationValue(piecesList) * color.rawValue) + (EvaluationValueHandler.getEvaluationValue((opponent?.piecesList)!) * (opponent?.color.rawValue)!)
        }
        
        return result
    }
    
    func generateMove() -> Move? {
        
        return nil
    }
}