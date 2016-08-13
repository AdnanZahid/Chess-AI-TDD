//
//  Piece.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

protocol PieceDelegate: class {
    
}

class Piece {
    
    var value: Int?
    var color: Color
    var position: Square
    var hasMoved: Bool
    
    weak var delegate: PieceDelegate?
    
    init(color: Color, position: Square, hasMoved: Bool, delegate: PieceDelegate?) {
        
        self.color = color
        self.position = position
        self.hasMoved = hasMoved
        
        self.delegate = delegate
    }
    
    func move(toSquare: Square) -> Bool {
        
        return false
    }
    
    func updatePosition(result: Bool, toSquare: Square) {
        
        if result == true {
            
            position = toSquare
            
            hasMoved = true
        }
    }
    
    func checkForCollisionsInBetween(toSquare: Square, fileRankPair: (Int, Int)) -> Bool {
        
        var result: Bool = false
    
        var positionToCheck: Square = position
        
        while positionToCheck != toSquare {
            
            positionToCheck = positionToCheck + getFileAndRankSingleAdvance(fileRankPair)
            
            result = checkIfPieceExistsOnSquare(positionToCheck)
        }
            
        return result
    }
    
    func checkIfPieceExistsOnSquare(square: Square) -> Bool {
        
        if let _ = Board.sharedInstance.getPieceOnPosition(square) {
            
            return false
        }
        
        return true
    }
}