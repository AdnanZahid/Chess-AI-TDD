//
//  Rook.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Rook: Piece {
    
    override init(color: Color?, position: Square?, hasMoved: Bool?, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        symbol = kRookSymbol
        value = abs(kRookValue) * color!.rawValue
        directionsList.append(( 1,  0))
        directionsList.append(( 0,  1))
        directionsList.append((-1,  0))
        directionsList.append(( 0, -1))
        moveStrategy = UnlimitedMoveStrategy(color: color!, directionsList: directionsList)
    }
    
    override func move(_ toSquare: Square) -> Bool {
        return Rook.move(Move(fromSquare: position!, toSquare: toSquare)) && Board.sharedInstance.checkForClearPath(Move(fromSquare: position!, toSquare: toSquare))
    }
    
    static func move(_ move: Move) -> Bool {
        guard fileOrRankAdvanceExclusiveCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) else { return false }
        return true
    }
}
