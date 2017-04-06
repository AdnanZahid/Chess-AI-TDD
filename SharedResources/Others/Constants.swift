//
//  Constants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

let kMaxPlies: Int = 2

var kNumberOfSquaresAlongX: Int = 12
var kNumberOfSquaresAlongY: Int = 12

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


let X: Int = kNilValue
let i: Int = kEmptyValue
let P: Int = -kPawnValue
let N: Int = -kKnightValue
let B: Int = -kBishopValue
let R: Int = -kRookValue
let Q: Int = -kQueenValue
let K: Int = -kKingValue

let p: Int = -P
let n: Int = -N
let b: Int = -B
let r: Int = -R
let q: Int = -Q
let k: Int = -K

let piecesConfigurationArray: [[Int]] = [
    
    [ X, X,   X, X, X, X, X, X, X, X,   X, X ],
    [ X, X,   X, X, X, X, X, X, X, X,   X, X ],
    
    [ X, X,   r, n, b, q, k, b, n, r,   X, X ],
    [ X, X,   p, p, p, p, p, p, p, p,   X, X ],
    [ X, X,   i, i, i, i, i, i, i, i,   X, X ],
    [ X, X,   i, i, i, i, i, i, i, i,   X, X ],
    [ X, X,   i, i, i, i, i, i, i, i,   X, X ],
    [ X, X,   i, i, i, i, i, i, i, i,   X, X ],
    [ X, X,   P, P, P, P, P, P, P, P,   X, X ],
    [ X, X,   R, N, B, Q, K, B, N, R,   X, X ],
    
    [ X, X,   X, X, X, X, X, X, X, X,   X, X ],
    [ X, X,   X, X, X, X, X, X, X, X,   X, X ]
]

/**
 * RANK ENUMERATION for all squares on the board
 */
let allPiecesRankEnumeration = RankIndex.k1.rawValue ... RankIndex.k8.rawValue

/**
 * FILE ENUMERATION for all squares on the board
 */
let allPiecesFileEnumeration = FileIndex.kA.rawValue ... FileIndex.kH.rawValue

/**
 * RANK ENUMERATION for squares occupied by WHITE PIECES
 */
let whitePiecesRankEnumeration = RankIndex.k1.rawValue ... RankIndex.k2.rawValue

/**
 * RANK ENUMERATION for squares occupied by BLACK PIECES
 */
let blackPiecesRankEnumeration = RankIndex.k7.rawValue ... RankIndex.k8.rawValue
