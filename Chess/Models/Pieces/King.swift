//
//  King.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class King: Piece {
    
    override init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        symbol = kKingSymbol
        
        value = abs(kKingValue)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if     getFileAndRankAdvance(position, square2: toSquare) == (0,  1)
            || getFileAndRankAdvance(position, square2: toSquare) == (0, -1)
            
            || getFileAndRankAdvance(position, square2: toSquare) == ( 1, 0)
            || getFileAndRankAdvance(position, square2: toSquare) == (-1, 0)
            
            || getFileAndRankAdvance(position, square2: toSquare) == ( 1,  1)
            || getFileAndRankAdvance(position, square2: toSquare) == (-1, -1)
            
            || getFileAndRankAdvance(position, square2: toSquare) == ( 1, -1)
            || getFileAndRankAdvance(position, square2: toSquare) == (-1,  1) {
            
            
            result = true
        }
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
}