//
//  Pawn.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Pawn: Piece {
    
    override init(color: Color?, position: Square?, hasMoved: Bool?, delegate: PieceDelegate?) {
        super.init(color: color, position: position, hasMoved: hasMoved, delegate: delegate)
        symbol = kPawnSymbol
        value = abs(kPawnValue) * color!.rawValue
        directionsList.append((0, pawnMoveDirection(1)))
        directionsList.append((0, pawnMoveDirection(2)))
        directionsList.append((-1, pawnMoveDirection(1)))
        directionsList.append(( 1, pawnMoveDirection(1)))
        moveStrategy = LimitedMoveStrategy(color: color!, directionsList: directionsList)
    }
    
    override func move(_ toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if Board.sharedInstance.checkIfSquareIsEmpty(toSquare) {
            
            if        getFileAndRankAdvance(Move(fromSquare: position!, toSquare: toSquare)) == directionsList[0] {
                
                result = true
                
            } else if getFileAndRankAdvance(Move(fromSquare: position!, toSquare: toSquare)) == directionsList[1]
                
                && hasMoved == false {
                
                result = Board.sharedInstance.checkForClearPath(Move(fromSquare: position!, toSquare: toSquare))
            }
            
        } else if Board.sharedInstance.getPieceOnPosition(toSquare)?.color != color {
            
            let fileAndRankAdvance: (Int, Int) = getFileAndRankAdvance(Move(fromSquare: position!, toSquare: toSquare))
            
            result = fileAndRankAdvance == directionsList[2] || fileAndRankAdvance == directionsList[3]
        }
        
        return result
    }
    
    func pawnMoveDirection(_ number: Int) -> Int {
        
        return number * color!.rawValue
    }
}
