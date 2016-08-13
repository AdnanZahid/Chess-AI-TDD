//
//  Bishop.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Bishop: Piece {
    
    override init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        value = abs(kBishop)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        let fileRankPair = getFileAndRankAdvance(position, square2: toSquare)
        
        let result: Bool = Bishop.move(position, toSquare: toSquare) && checkForCollisionsInBetween(toSquare, fileRankPair: fileRankPair)
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
    
    static func move(position: Square, toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if fileOrRankAdvanceBothCheck(position, square2: toSquare) {
            
            let fileRankPair = getFileAndRankAdvance(position, square2: toSquare)
            
            if abs(fileRankPair.0) == abs(fileRankPair.1) {
                
                result = true
            }
        }
        
        return result
    }
}