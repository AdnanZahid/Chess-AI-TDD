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
        return nil
//        let evaluationMove = firstAlphaBeta(kMaxPlies, player: self, alpha: Int.min/2, beta: Int.max/2)
//        return Move(fromSquare: evaluationMove.fromSquare!, toSquare: evaluationMove.toSquare!)
    }
    
//    func firstAlphaBeta(_ depth: Int, player: Player, alpha: Int, beta: Int) -> EvaluationMove {
//        var bestMove = EvaluationMove(fromSquare: nil, toSquare: nil, evaluationValue: Int.min/2)
//        player.piecesList.forEach { piece in
//            let fromSquare = piece.position!
//            piece.moveStrategy?.generateAllMoves(fromSquare).forEach { toSquare in
//                guard player.movePiece(Move(fromSquare: fromSquare, toSquare: toSquare), checkCurrentTurn: false) else { return }
//                var localAlpha = alpha
//                let evaluationMove = EvaluationMove(fromSquare: fromSquare,
//                                                    toSquare: toSquare,
//                                                    evaluationValue: -alphaBeta(depth - 1,
//                                                                                player: player.opponent!,
//                                                                                alpha: -beta,
//                                                                                beta: -localAlpha))
//                Board.sharedInstance.undoMove()
//                if evaluationMove.evaluationValue > bestMove.evaluationValue { bestMove = evaluationMove }
//                if bestMove.evaluationValue >= beta {}
//                else if bestMove.evaluationValue > alpha { localAlpha = bestMove.evaluationValue }
//            }
//        }
//        return bestMove
//    }
//
//    func alphaBeta(_ depth: Int, player: Player, alpha: Int, beta: Int) -> Int {
//        guard depth != 0 else { return (player.color == Color.white) ? Board.sharedInstance.evaluationValue : -Board.sharedInstance.evaluationValue }
//        var bestEvaluationValue = Int.min/2
//        player.piecesList.forEach { piece in
//            guard piece.captured == false else { return }
//            let fromSquare = piece.position!
//            piece.moveStrategy?.generateAllMoves(fromSquare).forEach { toSquare in
//                guard player.movePiece(Move(fromSquare: fromSquare, toSquare: toSquare), checkCurrentTurn: false) else { return }
//                var localAlpha = alpha
//                let evaluationValue = -alphaBeta(depth - 1, player: player.opponent!, alpha: -beta, beta: -localAlpha)
//                Board.sharedInstance.undoMove()
//                if evaluationValue > bestEvaluationValue { bestEvaluationValue = evaluationValue }
//                if bestEvaluationValue >= beta {}
//                else if bestEvaluationValue > alpha { localAlpha = bestEvaluationValue }
//            }
//        }
//        return bestEvaluationValue
//    }
}
