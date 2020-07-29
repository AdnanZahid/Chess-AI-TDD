//
//  PieceFactory.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class PieceFactory {
    
    static func getPiece(_ value: Int) -> Piece? {
        
        switch value {
            
        case kKingValue:
            return .whiteKing
        case kQueenValue:
            return .whiteQueen
        case kRookValue:
            return .whiteRook
        case kKnightValue:
            return .whiteKnight
        case kBishopValue:
            return .whiteBishop
        case kPawnValue:
            return .whitePawn
            
        case -kKingValue:
            return .blackKing
        case -kQueenValue:
            return .blackQueen
        case -kRookValue:
            return .blackRook
        case -kKnightValue:
            return .blackKnight
        case -kBishopValue:
            return .blackBishop
        case -kPawnValue:
            return .blackPawn
            
        default:
            return nil
        }
    }
}
