//
//  Board.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Board {
    
    var pieceArray = [[Piece?]](repeating: [Piece?](repeating: nil, count: 8), count: 8)
    
    init() {
        setupPieceBoard()
    }
    
    func setupPieceBoard() {
        pieceArray = piecesConfigurationArray.map { file in
            file.map { column in
                PieceFactory.getPiece(column)
            }
        }
    }
}

1. Constant
2. State
3. Functionality


1. Game logic -> State
2. Player -> State
3. Board -> State
4. BoardHandler -> Functionality
5. Square -> State
6. Piece -> Constant
7. NeighboringSegments -> Rank, File, Diagonal Squares
