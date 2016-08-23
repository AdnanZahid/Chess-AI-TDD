//
//  Constants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

let kMaxPlies: Int = 3

let kNumberOfSquaresAlongX: Int = 12
let kNumberOfSquaresAlongY: Int = 12

let kAsciiDifferenceForFile: Int = 63
let kAsciiDifferenceForRank: Int = 47

let kNewLineSymbol: String = "\n"
let kNilSymbol: String     = "X"
let kEmptySymbol: String   = "-"
let kPawnSymbol: String    = "P"
let kKnightSymbol: String  = "N"
let kBishopSymbol: String  = "B"
let kRookSymbol: String    = "R"
let kQueenSymbol: String   = "Q"
let kKingSymbol: String    = "K"

let kNilValue: Int    = -1
let kEmptyValue: Int  = 0
let kPawnValue: Int   = 100
let kKnightValue: Int = 300
let kBishopValue: Int = 305
let kRookValue: Int   = 500
let kQueenValue: Int  = 900
let kKingValue: Int   = 2000

let piecesConfigurationArray: [[Int]] = [
    
    [ kNilValue, kNilValue,        kNilValue,   kNilValue,     kNilValue,     kNilValue,    kNilValue,   kNilValue,     kNilValue,     kNilValue,          kNilValue, kNilValue ],
    [ kNilValue, kNilValue,        kNilValue,   kNilValue,     kNilValue,     kNilValue,    kNilValue,   kNilValue,     kNilValue,     kNilValue,          kNilValue, kNilValue ],
    
    
    
    
    [ kNilValue, kNilValue,        kRookValue,  kKnightValue,  kBishopValue,  kQueenValue,  kKingValue,  kBishopValue,  kKnightValue,  kRookValue,         kNilValue, kNilValue ],
    [ kNilValue, kNilValue,        kPawnValue,  kPawnValue,    kPawnValue,    kPawnValue,   kPawnValue,  kPawnValue,    kPawnValue,    kPawnValue,         kNilValue, kNilValue ],
    [ kNilValue, kNilValue,        kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,  kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,        kNilValue, kNilValue ],
    [ kNilValue, kNilValue,        kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,  kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,        kNilValue, kNilValue ],
    [ kNilValue, kNilValue,        kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,  kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,        kNilValue, kNilValue ],
    [ kNilValue, kNilValue,        kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,  kEmptyValue, kEmptyValue,   kEmptyValue,   kEmptyValue,        kNilValue, kNilValue ],
    [ kNilValue, kNilValue,       -kPawnValue, -kPawnValue,   -kPawnValue,   -kPawnValue,  -kPawnValue, -kPawnValue,   -kPawnValue,   -kPawnValue,         kNilValue, kNilValue ],
    [ kNilValue, kNilValue,       -kRookValue, -kKnightValue, -kBishopValue, -kQueenValue, -kKingValue, -kBishopValue, -kKnightValue, -kRookValue,         kNilValue, kNilValue ],
    
    
    
    
    [ kNilValue, kNilValue,        kNilValue,   kNilValue,     kNilValue,     kNilValue,    kNilValue,   kNilValue,     kNilValue,     kNilValue,          kNilValue, kNilValue ],
    [ kNilValue, kNilValue,        kNilValue,   kNilValue,     kNilValue,     kNilValue,    kNilValue,   kNilValue,     kNilValue,     kNilValue,          kNilValue, kNilValue ]
    
]

let A1: Square = Square(file: FileIndex.kA, rank: RankIndex.k1)
let A2: Square = Square(file: FileIndex.kA, rank: RankIndex.k2)
let A3: Square = Square(file: FileIndex.kA, rank: RankIndex.k3)
let A4: Square = Square(file: FileIndex.kA, rank: RankIndex.k4)
let A5: Square = Square(file: FileIndex.kA, rank: RankIndex.k5)
let A6: Square = Square(file: FileIndex.kA, rank: RankIndex.k6)
let A7: Square = Square(file: FileIndex.kA, rank: RankIndex.k7)
let A8: Square = Square(file: FileIndex.kA, rank: RankIndex.k8)

let B1: Square = Square(file: FileIndex.kB, rank: RankIndex.k1)
let B2: Square = Square(file: FileIndex.kB, rank: RankIndex.k2)
let B3: Square = Square(file: FileIndex.kB, rank: RankIndex.k3)
let B4: Square = Square(file: FileIndex.kB, rank: RankIndex.k4)
let B5: Square = Square(file: FileIndex.kB, rank: RankIndex.k5)
let B6: Square = Square(file: FileIndex.kB, rank: RankIndex.k6)
let B7: Square = Square(file: FileIndex.kB, rank: RankIndex.k7)
let B8: Square = Square(file: FileIndex.kB, rank: RankIndex.k8)

let C1: Square = Square(file: FileIndex.kC, rank: RankIndex.k1)
let C2: Square = Square(file: FileIndex.kC, rank: RankIndex.k2)
let C3: Square = Square(file: FileIndex.kC, rank: RankIndex.k3)
let C4: Square = Square(file: FileIndex.kC, rank: RankIndex.k4)
let C5: Square = Square(file: FileIndex.kC, rank: RankIndex.k5)
let C6: Square = Square(file: FileIndex.kC, rank: RankIndex.k6)
let C7: Square = Square(file: FileIndex.kC, rank: RankIndex.k7)
let C8: Square = Square(file: FileIndex.kC, rank: RankIndex.k8)

let D1: Square = Square(file: FileIndex.kD, rank: RankIndex.k1)
let D2: Square = Square(file: FileIndex.kD, rank: RankIndex.k2)
let D3: Square = Square(file: FileIndex.kD, rank: RankIndex.k3)
let D4: Square = Square(file: FileIndex.kD, rank: RankIndex.k4)
let D5: Square = Square(file: FileIndex.kD, rank: RankIndex.k5)
let D6: Square = Square(file: FileIndex.kD, rank: RankIndex.k6)
let D7: Square = Square(file: FileIndex.kD, rank: RankIndex.k7)
let D8: Square = Square(file: FileIndex.kD, rank: RankIndex.k8)

let E1: Square = Square(file: FileIndex.kE, rank: RankIndex.k1)
let E2: Square = Square(file: FileIndex.kE, rank: RankIndex.k2)
let E3: Square = Square(file: FileIndex.kE, rank: RankIndex.k3)
let E4: Square = Square(file: FileIndex.kE, rank: RankIndex.k4)
let E5: Square = Square(file: FileIndex.kE, rank: RankIndex.k5)
let E6: Square = Square(file: FileIndex.kE, rank: RankIndex.k6)
let E7: Square = Square(file: FileIndex.kE, rank: RankIndex.k7)
let E8: Square = Square(file: FileIndex.kE, rank: RankIndex.k8)

let F1: Square = Square(file: FileIndex.kF, rank: RankIndex.k1)
let F2: Square = Square(file: FileIndex.kF, rank: RankIndex.k2)
let F3: Square = Square(file: FileIndex.kF, rank: RankIndex.k3)
let F4: Square = Square(file: FileIndex.kF, rank: RankIndex.k4)
let F5: Square = Square(file: FileIndex.kF, rank: RankIndex.k5)
let F6: Square = Square(file: FileIndex.kF, rank: RankIndex.k6)
let F7: Square = Square(file: FileIndex.kF, rank: RankIndex.k7)
let F8: Square = Square(file: FileIndex.kF, rank: RankIndex.k8)

let G1: Square = Square(file: FileIndex.kG, rank: RankIndex.k1)
let G2: Square = Square(file: FileIndex.kG, rank: RankIndex.k2)
let G3: Square = Square(file: FileIndex.kG, rank: RankIndex.k3)
let G4: Square = Square(file: FileIndex.kG, rank: RankIndex.k4)
let G5: Square = Square(file: FileIndex.kG, rank: RankIndex.k5)
let G6: Square = Square(file: FileIndex.kG, rank: RankIndex.k6)
let G7: Square = Square(file: FileIndex.kG, rank: RankIndex.k7)
let G8: Square = Square(file: FileIndex.kG, rank: RankIndex.k8)

let H1: Square = Square(file: FileIndex.kH, rank: RankIndex.k1)
let H2: Square = Square(file: FileIndex.kH, rank: RankIndex.k2)
let H3: Square = Square(file: FileIndex.kH, rank: RankIndex.k3)
let H4: Square = Square(file: FileIndex.kH, rank: RankIndex.k4)
let H5: Square = Square(file: FileIndex.kH, rank: RankIndex.k5)
let H6: Square = Square(file: FileIndex.kH, rank: RankIndex.k6)
let H7: Square = Square(file: FileIndex.kH, rank: RankIndex.k7)
let H8: Square = Square(file: FileIndex.kH, rank: RankIndex.k8)