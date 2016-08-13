//
//  Pawn.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Pawn: Piece {
    
    override init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        value = abs(kPawn)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if        getFileAndRankAdvance(position, square2: toSquare) == (0, pawnMoveDirection(1)) {
            
            result = true
            
        } else if getFileAndRankAdvance(position, square2: toSquare) == (0, pawnMoveDirection(2))
            
            && hasMoved == false {
            
            let fileRankPair = getFileAndRankAdvance(position, square2: toSquare)
            
            result = checkForCollisionsInBetween(toSquare, fileRankPair: fileRankPair)
        }
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
    
    func pawnMoveDirection(number: Int) -> Int {
        
        return number * color.rawValue
    }
}