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
        
        symbol = kPawnSymbol
        
        value = abs(kPawnValue)
        
        /**
         * Pawn directions
         *
         * ---------------
         *
         * The method pawnMoveDirection(number) determines the DIRECTION according to COLOR
         */
        directionsList.append((0, pawnMoveDirection(1)))
        directionsList.append((0, pawnMoveDirection(2)))
        
        directionsList.append((-1, pawnMoveDirection(1)))
        directionsList.append(( 1, pawnMoveDirection(1)))
        
        moveStrategy = LimitedMoveStrategy(color: color, directionsList: directionsList)
    }
    
    override func move(toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if Board.sharedInstance.checkIfSquareIsEmpty(toSquare) {
            
            if        getFileAndRankAdvance(Move(fromSquare: position, toSquare: toSquare)) == directionsList[0] {
                
                result = true
                
            } else if getFileAndRankAdvance(Move(fromSquare: position, toSquare: toSquare)) == directionsList[1]
                
                && hasMoved == false {
                
                let fileRankPair = getFileAndRankAdvance(Move(fromSquare: position, toSquare: toSquare))
                
                result = Board.sharedInstance.checkForClearPath(Move(fromSquare: position, toSquare: toSquare), fileRankPair: fileRankPair)
            }
            
        } else if Board.sharedInstance.getPieceOnPosition(toSquare)?.color != color {
            
            let fileAndRankAdvance: (Int, Int) = getFileAndRankAdvance(Move(fromSquare: position, toSquare: toSquare))
            
            result = fileAndRankAdvance == directionsList[2] || fileAndRankAdvance == directionsList[3]
        }
    
        updatePosition(result, toSquare: toSquare)
        
        return result
    }
    
    func pawnMoveDirection(number: Int) -> Int {
        
        return number * color.rawValue
    }
}