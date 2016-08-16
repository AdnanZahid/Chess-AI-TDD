//
//  Rook.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Rook: Piece {
    
    let localSymbol: String = "R"
    
    override init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        
        symbol = kRookSymbol
        
        value = abs(kRookValue)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        let fileRankPair = getFileAndRankAdvance(position, square2: toSquare)
        
        let result: Bool = Rook.move(position, toSquare: toSquare) && checkForCollisionsInBetween(toSquare, fileRankPair: fileRankPair)
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
    
    static func move(position: Square, toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if fileOrRankAdvanceExclusiveCheck(position, square2: toSquare) {
            
            result = true
        }
        
        return result
    }
}