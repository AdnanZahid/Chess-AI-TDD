//
//  Structures.swift
//  Chess
//
//  Created by Adnan Zahid on 8/23/16.
//  Copyright © 2016 Chess. All rights reserved.
//

struct Move {
    let fromSquare: Square
    let toSquare: Square
}

struct EvaluationMove {
    let fromSquare: Square?
    let toSquare: Square?
    let evaluationValue: Int
}

struct PieceState {
    let piece: Piece
    let position: Square
    let hasMoved: Bool
}

struct MoveState {
    let fromPieceState: PieceState
    let toPieceState: PieceState
}

enum RankIndex: Int {
    
    case k__2 = 0
    case k__1 = 1
    
    case k1   = 2
    case k2   = 3
    case k3   = 4
    case k4   = 5
    case k5   = 6
    case k6   = 7
    case k7   = 8
    case k8   = 9
    
    case k_1  = 10
    case k_2  = 11
}

enum FileIndex: Int {
    
    case k__2 = 0
    case k__1 = 1
    
    case kA   = 2
    case kB   = 3
    case kC   = 4
    case kD   = 5
    case kE   = 6
    case kF   = 7
    case kG   = 8
    case kH   = 9
    
    case k_1  = 10
    case k_2  = 11
}

enum Color: Int {
    
    case white = 1
    case black = -1
}