//
//  Bishop.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Bishop: Piece {
    
    override init(color: Color?, position: Square?, hasMoved: Bool?, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        symbol = kBishopSymbol
        value = abs(kBishopValue) * color!.rawValue
        directionsList.append(( 1,  1))
        directionsList.append(( 1, -1))
        directionsList.append((-1,  1))
        directionsList.append((-1, -1))
        moveStrategy = UnlimitedMoveStrategy(color: color!, directionsList: directionsList)
    }
    
    override func move(_ toSquare: Square) -> Bool {
        return Bishop.move(Move(fromSquare: position!, toSquare: toSquare)) &&
            Board.sharedInstance.checkForClearPath(Move(fromSquare: position!, toSquare: toSquare))
    }
    
    static func move(_ move: Move) -> Bool {
        guard fileOrRankAdvanceBothCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) else { return false }
        let fileRankPair = getFileAndRankAdvance(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
        guard abs(fileRankPair.0) == abs(fileRankPair.1) else { return false }
        return true
    }
}
