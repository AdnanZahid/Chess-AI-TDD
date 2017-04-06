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
    
    func movePiece(_ move: Move, checkCurrentTurn: Bool) -> Bool {
        
        var result: Bool = false
        
        if Board.sharedInstance.movePiece(move, checkCurrentTurn: checkCurrentTurn) {
            
            result = true
            
            /**
             * SET the BOARD EVALUATION VALUE
             */
            setBoardEvaluationValue()
        }
        
        return result
    }
    
    /**
     * SET the BOARD EVALUATION VALUE
     */
    func setBoardEvaluationValue() {
        
        Board.sharedInstance.evaluationValue =
            
            /**
             * SELF PLAYER EVALUATION VALUE - MULTIPLIED BY +1 for WHITE
             *                              - MULTIPLIED BY -1 for BLACK
             */
            (EvaluationValueHandler.getEvaluationValue(piecesList)
                * color.rawValue)
            /**
             * ADD TO
             */
            +
            
            /**
             * OPPONENT PLAYER EVALUATION VALUE - MULTIPLIED BY +1 for WHITE
             *                                  - MULTIPLIED BY -1 for BLACK
             */
            (EvaluationValueHandler.getEvaluationValue((opponent?.piecesList)!)
                * (opponent?.color.rawValue)!)
    }
    
    func generateMove() -> Move? {
        
        preconditionFailure("This method must be overridden")
        
        return nil
    }
}
