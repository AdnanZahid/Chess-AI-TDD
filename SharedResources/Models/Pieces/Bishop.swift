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
        
        value = abs(kBishopValue)
        
        /**
         * Bishop directions
         */
        directionsList.append(( 1,  1))
        directionsList.append(( 1, -1))
        directionsList.append((-1,  1))
        directionsList.append((-1, -1))
        
        moveStrategy = UnlimitedMoveStrategy(color: color!, directionsList: directionsList)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        let result: Bool = Bishop.move(Move(fromSquare: position!, toSquare: toSquare)) && Board.sharedInstance.checkForClearPath(Move(fromSquare: position!, toSquare: toSquare))
        
        return result
    }
    
    static func move(move: Move) -> Bool {
        
        var result: Bool = false
        
        if fileOrRankAdvanceBothCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) {
            
            let fileRankPair = getFileAndRankAdvance(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
            
            if abs(fileRankPair.0) == abs(fileRankPair.1) {
                
                result = true
            }
        }
        
        return result
    }
}