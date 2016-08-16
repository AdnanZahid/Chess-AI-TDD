//
//  Knight.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Knight: Piece {
    
    override init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        symbol = kKnightSymbol
        
        value = abs(kKnightValue)
    }

    override func move(toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if     getFileAndRankAdvance(position, square2: toSquare) == ( 1, 2)
            || getFileAndRankAdvance(position, square2: toSquare) == (-1, 2)
            
            || getFileAndRankAdvance(position, square2: toSquare) == ( 2, 1)
            || getFileAndRankAdvance(position, square2: toSquare) == (-2, 1)
            
            || getFileAndRankAdvance(position, square2: toSquare) == ( 1, -2)
            || getFileAndRankAdvance(position, square2: toSquare) == (-1, -2)
            
            || getFileAndRankAdvance(position, square2: toSquare) == ( 2, -1)
            || getFileAndRankAdvance(position, square2: toSquare) == (-2, -1) {
            
            
            result = true
        }
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
}