//
//  Queen.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Queen: Piece {
    
    override init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        symbol = kQueenSymbol
        
        value = abs(kQueenValue)
        
        /**
         * Bishop directions
         */
        directionsList.append(( 1,  1))
        directionsList.append(( 1, -1))
        directionsList.append((-1,  1))
        directionsList.append((-1, -1))
        
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
        
        let result: Bool = (Rook.move(Move(fromSquare: position, toSquare: toSquare)) || Bishop.move(Move(fromSquare: position, toSquare: toSquare))) && Board.sharedInstance.checkForClearPath(Move(fromSquare: position, toSquare: toSquare))
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
}