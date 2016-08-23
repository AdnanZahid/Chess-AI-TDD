//
//  Piece.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

protocol PieceDelegate: class {
    
}

class Piece: Equatable {
    
    var symbol: String = kEmptySymbol
    
    var value: Int?
    var color: Color?
    var position: Square?
    var hasMoved: Bool?
    var id: Int
    
    weak var delegate: PieceDelegate?
    
    var moveStrategy: MoveStrategy?
    
    var directionsList: [(Int, Int)] = []
    
    init(color: Color?, position: Square?, hasMoved: Bool?, delegate: PieceDelegate?) {
        
        self.color = color
        self.position = position
        self.hasMoved = hasMoved
        
        self.delegate = delegate
        
        if let validPosition = position {
            
            id = (validPosition.rank.rawValue * 10) + validPosition.file.rawValue
            
        } else {
            
            id = 0
        }
    }
    
    func move(toSquare: Square) -> Bool {
        
        return false
    }
    
    func updatePosition(toSquare: Square, changeHasMoved: Bool) {
        
        position = toSquare
        
        if changeHasMoved {
            hasMoved = true
        }
    }
}