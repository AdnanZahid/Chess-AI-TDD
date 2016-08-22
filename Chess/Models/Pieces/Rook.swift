//
//  Rook.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Rook: Piece {
    
    override init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        symbol = kRookSymbol
        
        value = abs(kRookValue)
        
        /**
         * Rook directions
         */
        directionsList.append(( 1,  0))
        directionsList.append(( 0,  1))
        directionsList.append((-1,  0))
        directionsList.append(( 0, -1))
        
        moveStrategy = UnlimitedMoveStrategy(color: color, directionsList: directionsList)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        let result: Bool = Rook.move(Move(fromSquare: position, toSquare: toSquare)) && Board.sharedInstance.checkForClearPath(Move(fromSquare: position, toSquare: toSquare))
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
    
    static func move(move: Move) -> Bool {
        
        var result: Bool = false
        
        if fileOrRankAdvanceExclusiveCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) {
            
            result = true
        }
        
        return result
    }
}