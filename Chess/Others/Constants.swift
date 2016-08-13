//
//  Constants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

let kNumberOfSquaresAlongX = 12
let kNumberOfSquaresAlongY = 12

struct Square {
    let file: FileIndex
    let rank: RankIndex
}

struct Move {
    let fromSquare: Square
    let toSquare: Square
}

enum RankIndex: Int {
    
    case k0 = 0 // Just for testing
    
    case k1 = 2
    case k2 = 3
    case k3 = 4
    case k4 = 5
    case k5 = 6
    case k6 = 7
    case k7 = 8
    case k8 = 9
}

enum FileIndex: Int {
    
    case k0 = 0 // Just for testing
    
    case kA = 2
    case kB = 3
    case kC = 4
    case kD = 5
    case kE = 6
    case kF = 7
    case kG = 8
    case kH = 9
}

enum Color: Int {
    
    case white = 1
    case black = -1
}

let kNil    = -1
let kEmpty  = 0
let kPawn   = 100
let kBishop = 305
let kKnight = 300
let kRook   = 500
let kQueen  = 900
let kKing   = 2000

let piecesConfigurationArray: [[Int]] = [
    
    [ kNil, kNil,        kNil,   kNil,     kNil,     kNil,    kNil,   kNil,     kNil,     kNil,          kNil, kNil ],
    [ kNil, kNil,        kNil,   kNil,     kNil,     kNil,    kNil,   kNil,     kNil,     kNil,          kNil, kNil ],
    
    
    
    
    [ kNil, kNil,        kRook,  kKnight,  kBishop,  kQueen,  kKing,  kBishop,  kKnight,  kRook,         kNil, kNil ],
    [ kNil, kNil,        kPawn,  kPawn,    kPawn,    kPawn,   kPawn,  kPawn,    kPawn,    kPawn,         kNil, kNil ],
    [ kNil, kNil,        kEmpty, kEmpty,   kEmpty,   kEmpty,  kEmpty, kEmpty,   kEmpty,   kEmpty,        kNil, kNil ],
    [ kNil, kNil,        kEmpty, kEmpty,   kEmpty,   kEmpty,  kEmpty, kEmpty,   kEmpty,   kEmpty,        kNil, kNil ],
    [ kNil, kNil,        kEmpty, kEmpty,   kEmpty,   kEmpty,  kEmpty, kEmpty,   kEmpty,   kEmpty,        kNil, kNil ],
    [ kNil, kNil,        kEmpty, kEmpty,   kEmpty,   kEmpty,  kEmpty, kEmpty,   kEmpty,   kEmpty,        kNil, kNil ],
    [ kNil, kNil,        kEmpty, kEmpty,   kEmpty,   kEmpty,  kEmpty, kEmpty,   kEmpty,   kEmpty,        kNil, kNil ],
    [ kNil, kNil,        kEmpty, kEmpty,   kEmpty,   kEmpty,  kEmpty, kEmpty,   kEmpty,   kEmpty,        kNil, kNil ],
    [ kNil, kNil,       -kPawn, -kPawn,   -kPawn,   -kPawn,  -kPawn, -kPawn,   -kPawn,   -kPawn,         kNil, kNil ],
    [ kNil, kNil,       -kRook, -kKnight, -kBishop, -kQueen, -kKing, -kBishop, -kKnight, -kRook,         kNil, kNil ],
    
    
    
    
    [ kNil, kNil,        kNil,   kNil,     kNil,     kNil,    kNil,   kNil,     kNil,     kNil,          kNil, kNil ],
    [ kNil, kNil,        kNil,   kNil,     kNil,     kNil,    kNil,   kNil,     kNil,     kNil,          kNil, kNil ]
    
]

let A1 = Square(file: FileIndex.kA, rank: RankIndex.k1)
let A2 = Square(file: FileIndex.kA, rank: RankIndex.k2)
let A3 = Square(file: FileIndex.kA, rank: RankIndex.k3)
let A4 = Square(file: FileIndex.kA, rank: RankIndex.k4)
let A5 = Square(file: FileIndex.kA, rank: RankIndex.k5)
let A6 = Square(file: FileIndex.kA, rank: RankIndex.k6)
let A7 = Square(file: FileIndex.kA, rank: RankIndex.k7)
let A8 = Square(file: FileIndex.kA, rank: RankIndex.k8)

let B1 = Square(file: FileIndex.kB, rank: RankIndex.k1)
let B2 = Square(file: FileIndex.kB, rank: RankIndex.k2)
let B3 = Square(file: FileIndex.kB, rank: RankIndex.k3)
let B4 = Square(file: FileIndex.kB, rank: RankIndex.k4)
let B5 = Square(file: FileIndex.kB, rank: RankIndex.k5)
let B6 = Square(file: FileIndex.kB, rank: RankIndex.k6)
let B7 = Square(file: FileIndex.kB, rank: RankIndex.k7)
let B8 = Square(file: FileIndex.kB, rank: RankIndex.k8)

let C1 = Square(file: FileIndex.kC, rank: RankIndex.k1)
let C2 = Square(file: FileIndex.kC, rank: RankIndex.k2)
let C3 = Square(file: FileIndex.kC, rank: RankIndex.k3)
let C4 = Square(file: FileIndex.kC, rank: RankIndex.k4)
let C5 = Square(file: FileIndex.kC, rank: RankIndex.k5)
let C6 = Square(file: FileIndex.kC, rank: RankIndex.k6)
let C7 = Square(file: FileIndex.kC, rank: RankIndex.k7)
let C8 = Square(file: FileIndex.kC, rank: RankIndex.k8)

let D1 = Square(file: FileIndex.kD, rank: RankIndex.k1)
let D2 = Square(file: FileIndex.kD, rank: RankIndex.k2)
let D3 = Square(file: FileIndex.kD, rank: RankIndex.k3)
let D4 = Square(file: FileIndex.kD, rank: RankIndex.k4)
let D5 = Square(file: FileIndex.kD, rank: RankIndex.k5)
let D6 = Square(file: FileIndex.kD, rank: RankIndex.k6)
let D7 = Square(file: FileIndex.kD, rank: RankIndex.k7)
let D8 = Square(file: FileIndex.kD, rank: RankIndex.k8)

let E1 = Square(file: FileIndex.kE, rank: RankIndex.k1)
let E2 = Square(file: FileIndex.kE, rank: RankIndex.k2)
let E3 = Square(file: FileIndex.kE, rank: RankIndex.k3)
let E4 = Square(file: FileIndex.kE, rank: RankIndex.k4)
let E5 = Square(file: FileIndex.kE, rank: RankIndex.k5)
let E6 = Square(file: FileIndex.kE, rank: RankIndex.k6)
let E7 = Square(file: FileIndex.kE, rank: RankIndex.k7)
let E8 = Square(file: FileIndex.kE, rank: RankIndex.k8)

let F1 = Square(file: FileIndex.kF, rank: RankIndex.k1)
let F2 = Square(file: FileIndex.kF, rank: RankIndex.k2)
let F3 = Square(file: FileIndex.kF, rank: RankIndex.k3)
let F4 = Square(file: FileIndex.kF, rank: RankIndex.k4)
let F5 = Square(file: FileIndex.kF, rank: RankIndex.k5)
let F6 = Square(file: FileIndex.kF, rank: RankIndex.k6)
let F7 = Square(file: FileIndex.kF, rank: RankIndex.k7)
let F8 = Square(file: FileIndex.kF, rank: RankIndex.k8)

let G1 = Square(file: FileIndex.kG, rank: RankIndex.k1)
let G2 = Square(file: FileIndex.kG, rank: RankIndex.k2)
let G3 = Square(file: FileIndex.kG, rank: RankIndex.k3)
let G4 = Square(file: FileIndex.kG, rank: RankIndex.k4)
let G5 = Square(file: FileIndex.kG, rank: RankIndex.k5)
let G6 = Square(file: FileIndex.kG, rank: RankIndex.k6)
let G7 = Square(file: FileIndex.kG, rank: RankIndex.k7)
let G8 = Square(file: FileIndex.kG, rank: RankIndex.k8)

let H1 = Square(file: FileIndex.kH, rank: RankIndex.k1)
let H2 = Square(file: FileIndex.kH, rank: RankIndex.k2)
let H3 = Square(file: FileIndex.kH, rank: RankIndex.k3)
let H4 = Square(file: FileIndex.kH, rank: RankIndex.k4)
let H5 = Square(file: FileIndex.kH, rank: RankIndex.k5)
let H6 = Square(file: FileIndex.kH, rank: RankIndex.k6)
let H7 = Square(file: FileIndex.kH, rank: RankIndex.k7)
let H8 = Square(file: FileIndex.kH, rank: RankIndex.k8)