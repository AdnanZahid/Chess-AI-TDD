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
        
        value = abs(kQueen)
    }

    override func move(toSquare: Square) -> Bool {
        
        let fileRankPair = getFileAndRankAdvance(position, square2: toSquare)
        
        let result: Bool = (Rook.move(position, toSquare: toSquare) || Bishop.move(position, toSquare: toSquare)) && checkForCollisionsInBetween(toSquare, fileRankPair: fileRankPair)
        
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
}