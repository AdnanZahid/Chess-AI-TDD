//
//  PieceFactory.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class PieceFactory {
    
    static func getPiece(value: Int, position: Square, delegate: PieceDelegate?) -> Piece {
        
        switch value {
        case kNilValue:
            return EmptyPiece.sharedInstance
            
        //////////////////
        // WHITE PIECES //
        //////////////////
            
        case kKingValue:
            return King(color: Color.white, position: position, hasMoved: false, delegate: delegate)
        case kQueenValue:
            return Queen(color: Color.white, position: position, hasMoved: false, delegate: delegate)
        case kRookValue:
            return Rook(color: Color.white, position: position, hasMoved: false, delegate: delegate)
        case kKnightValue:
            return Knight(color: Color.white, position: position, hasMoved: false, delegate: delegate)
        case kBishopValue:
            return Bishop(color: Color.white, position: position, hasMoved: false, delegate: delegate)
        case kPawnValue:
            return Pawn(color: Color.white, position: position, hasMoved: false, delegate: delegate)
            
        //////////////////
        // BLACK PIECES //
        //////////////////
            
        case -kKingValue:
            return King(color: Color.black, position: position, hasMoved: false, delegate: delegate)
        case -kQueenValue:
            return Queen(color: Color.black, position: position, hasMoved: false, delegate: delegate)
        case -kRookValue:
            return Rook(color: Color.black, position: position, hasMoved: false, delegate: delegate)
        case -kKnightValue:
            return Knight(color: Color.black, position: position, hasMoved: false, delegate: delegate)
        case -kBishopValue:
            return Bishop(color: Color.black, position: position, hasMoved: false, delegate: delegate)
        case -kPawnValue:
            return Pawn(color: Color.black, position: position, hasMoved: false, delegate: delegate)
            
        default:
            return EmptyPiece.sharedInstance
        }
    }
}