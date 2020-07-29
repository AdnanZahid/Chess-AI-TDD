//
//  Piece.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

enum MovementStrategy {
    case diagonal
    case straight
    case lShaped
}

enum MovementType {
    case step
    case slide
}

typealias PieceTuple = (value: Int, movementStrategies: [MovementStrategy], movementType: MovementType, color: Color)

//enum Piece {
//    case empty
//    enum White {
//        static let bishop = PieceTuple(value: 350, movementStrategies: [.diagonal], movementType: .slide, color: .white)
//        static let king = PieceTuple(value: .max, movementStrategies: [.diagonal, .straight], movementType: .step, color: .white)
//        static let knight = PieceTuple(value: 300, movementStrategies: [.lShaped], movementType: .step, color: .white)
//        static let pawn = PieceTuple(value: 100, movementStrategies: [.straight], movementType: .step, color: .white)
//        static let queen = PieceTuple(value: 900, movementStrategies: [.diagonal, .straight], movementType: .slide, color: .white)
//        static let rook = PieceTuple(value: 500, movementStrategies: [.straight], movementType: .slide, color: .white)
//    }
//    enum Black {
//        static let bishop = PieceTuple(value: -350, movementStrategies: [.diagonal], movementType: .slide, color: .black)
//        static let king = PieceTuple(value: -.max, movementStrategies: [.diagonal, .straight], movementType: .step, color: .black)
//        static let knight = PieceTuple(value: -300, movementStrategies: [.lShaped], movementType: .step, color: .black)
//        static let pawn = PieceTuple(value: -100, movementStrategies: [.straight], movementType: .step, color: .black)
//        static let queen = PieceTuple(value: -900, movementStrategies: [.diagonal, .straight], movementType: .slide, color: .black)
//        static let rook = PieceTuple(value: -500, movementStrategies: [.straight], movementType: .slide, color: .black)
//    }
//}

enum Piece: RawRepresentable {
    
    case whiteBishop
    case whiteKing
    case whiteKnight
    case whitePawn
    case whiteQueen
    case whiteRook
    
    case blackBishop
    case blackKing
    case blackKnight
    case blackPawn
    case blackQueen
    case blackRook
    
    var rawValue: PieceTuple {
        switch self {
            
        case .whiteBishop: return PieceTuple(value: 350, movementStrategies: [.diagonal], movementType: .slide, color: .white)
        case .whiteKing: return PieceTuple(value: .max, movementStrategies: [.diagonal, .straight], movementType: .step, color: .white)
        case .whiteKnight: return PieceTuple(value: 300, movementStrategies: [.lShaped], movementType: .step, color: .white)
        case .whitePawn: return PieceTuple(value: 100, movementStrategies: [.straight], movementType: .step, color: .white)
        case .whiteQueen: return PieceTuple(value: 900, movementStrategies: [.diagonal, .straight], movementType: .slide, color: .white)
        case .whiteRook: return PieceTuple(value: 500, movementStrategies: [.straight], movementType: .slide, color: .white)
            
        case .blackBishop: return PieceTuple(value: -350, movementStrategies: [.diagonal], movementType: .slide, color: .black)
        case .blackKing: return PieceTuple(value: -.max, movementStrategies: [.diagonal, .straight], movementType: .step, color: .black)
        case .blackKnight: return PieceTuple(value: -300, movementStrategies: [.lShaped], movementType: .step, color: .black)
        case .blackPawn: return PieceTuple(value: -100, movementStrategies: [.straight], movementType: .step, color: .black)
        case .blackQueen: return PieceTuple(value: -900, movementStrategies: [.diagonal, .straight], movementType: .slide, color: .black)
        case .blackRook: return PieceTuple(value: -500, movementStrategies: [.straight], movementType: .slide, color: .black)
        }
    }
    
    init?(rawValue: (value: Int, movementStrategies: [MovementStrategy], movementType: MovementType, color: Color)) {
        return nil
    }
}
