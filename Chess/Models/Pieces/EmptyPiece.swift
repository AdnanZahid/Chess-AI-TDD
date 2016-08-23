//
//  EmptyPiece.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class EmptyPiece: Piece {
    
    static let sharedInstance = EmptyPiece(color: Color.white, position: Square(file: FileIndex.kA, rank: RankIndex.k1), hasMoved: false, delegate: nil)
}