//
//  AIPlayer.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class AIPlayer: Player {
    
    override init(color: Color) {
        super.init(color: color)
        isAI = true
    }
    
    override func generateMove() -> Move? {
        let evaluationMove = firstAlphaBeta(kMaxPlies, player: self, alpha: Int.min/2, beta: Int.max/2)
        return Move(fromSquare: evaluationMove.fromSquare!, toSquare: evaluationMove.toSquare!)
    }
    
    func firstAlphaBeta(_ depth: Int, player: Player, alpha: Int, beta: Int) -> EvaluationMove {
        
        var bestMove: EvaluationMove = EvaluationMove(fromSquare: nil, toSquare: nil, evaluationValue: Int.min/2)
        
        for piece in player.piecesList {
            
            if piece.captured == false {
                
                let fromSquare: Square = piece.position!
                
                for toSquare in (piece.moveStrategy?.generateAllMoves(fromSquare))! {
                    
                    if player.movePiece(Move(fromSquare: fromSquare, toSquare: toSquare), checkCurrentTurn: false) {
                        
                        var localAlpha = alpha
                        
                        let evaluationMove: EvaluationMove = EvaluationMove(fromSquare: fromSquare, toSquare: toSquare, evaluationValue: -alphaBeta(depth - 1, player: player.opponent!, alpha: -beta, beta: -localAlpha))
                        
                        
                        Board.sharedInstance.undoMove()
                        
                        
                        if evaluationMove.evaluationValue > bestMove.evaluationValue {
                            
                            bestMove = evaluationMove
                        }
                        
                        if bestMove.evaluationValue >= beta {
                            
                            break
                        
                        } else if bestMove.evaluationValue > alpha {
                            
                            localAlpha = bestMove.evaluationValue
                        }
                    }
                }
            }
        }
        
        return bestMove
    }
    
    func alphaBeta(_ depth: Int, player: Player, alpha: Int, beta: Int) -> Int {
        
        if depth == 0 {
            
            if player.color == Color.white {
                
                return Board.sharedInstance.evaluationValue
                
            } else {
                
                return -Board.sharedInstance.evaluationValue
            }
        }
        
        var bestEvaluationValue = Int.min/2
        
        for piece in player.piecesList {
            
            if piece.captured == false {
                
                let fromSquare: Square = piece.position!
                
                for toSquare in (piece.moveStrategy?.generateAllMoves(fromSquare))! {
                    
                    if player.movePiece(Move(fromSquare: fromSquare, toSquare: toSquare), checkCurrentTurn: false) {
                        
                        var localAlpha = alpha
                        
                        let evaluationValue = -alphaBeta(depth - 1, player: player.opponent!, alpha: -beta, beta: -localAlpha)
                        
                        
                        Board.sharedInstance.undoMove()
                        
                        
                        if evaluationValue > bestEvaluationValue {
                            
                            bestEvaluationValue = evaluationValue
                        }
                        
                        if bestEvaluationValue >= beta {
                            
                            break
                            
                        } else if bestEvaluationValue > alpha {
                            
                            localAlpha = bestEvaluationValue
                        }
                    }
                }
            }
        }
        
        return bestEvaluationValue
    }
}
