//
//  Piece.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

protocol PieceDelegate: class {
    
}

class Piece {
    
    var id: Int = 0
    
    var symbol: String = kEmptySymbol
    var value:  Int    = kEmptyValue
    
    var captured: Bool = false
    
    var moveStrategy: MoveStrategy?
    var directionsList: [(Int, Int)] = []
    
    var color: Color?
    var position: Square?
    var hasMoved: Bool?
    weak var delegate: PieceDelegate?
    
    init(color: Color?, position: Square?, hasMoved: Bool?, delegate: PieceDelegate?) {
        
        self.color = color
        self.position = position
        self.hasMoved = hasMoved
        
        self.delegate = delegate
        
        if let validPosition = position {
            
            id = (validPosition.rank.rawValue * 10) + validPosition.file.rawValue
        }
    }
    
    func move(_ toSquare: Square) -> Bool {
        
        preconditionFailure("This method must be overridden")
        
        return false
    }
    
    func updatePosition(_ toSquare: Square, changeHasMoved: Bool) {
        
        position = toSquare
        
        if changeHasMoved {
            
            hasMoved = true
        }
    }
}
