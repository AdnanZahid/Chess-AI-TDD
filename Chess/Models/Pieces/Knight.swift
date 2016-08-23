//
//  Knight.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Knight: Piece {
    
    override init(color: Color?, position: Square?, hasMoved: Bool?, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        symbol = kKnightSymbol
        
        value = abs(kKnightValue)
        
        /**
         * Knight directions
         */
        directionsList.append(( 1,  2))
        directionsList.append(( 2,  1))
        
        directionsList.append((-1,  2))
        directionsList.append((-2,  1))
        
        directionsList.append(( 1, -2))
        directionsList.append(( 2, -1))
        
        directionsList.append((-1, -2))
        directionsList.append((-2, -1))
        
        moveStrategy = LimitedMoveStrategy(color: color!, directionsList: directionsList)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        let result: Bool = King.move(position!, toSquare: toSquare, directionsList: directionsList)
        
//        updatePosition(result, toSquare: toSquare)
        
        return result
    }
}