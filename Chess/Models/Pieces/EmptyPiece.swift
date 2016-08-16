//
//  EmptyPiece.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class EmptyPiece: Piece {
    
    static let sharedInstance = EmptyPiece(color: Color.white, position: Square(file: FileIndex.k0, rank: RankIndex.k0), hasMoved: false, delegate: nil)
}