//
//  Constants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

let kMaxPlies = 4

var kNumberOfSquaresAlongX = 12
var kNumberOfSquaresAlongY = 12

let kAsciiDifferenceForFile = 63
let kAsciiDifferenceForRank = 47

let kNewLineSymbol = "\n"
let kNilSymbol     = "X"
let kEmptySymbol   = "-"
let kPawnSymbol    = "P"
let kKnightSymbol  = "N"
let kBishopSymbol  = "B"
let kRookSymbol    = "R"
let kQueenSymbol   = "Q"
let kKingSymbol    = "K"

let kNilValue    = -1
let kEmptyValue  = 0
let kPawnValue   = 100
let kKnightValue = 300
let kBishopValue = 305
let kRookValue   = 500
let kQueenValue  = 900
let kKingValue   = 2000


let X = kNilValue
let i = kEmptyValue
let P = -kPawnValue
let N = -kKnightValue
let B = -kBishopValue
let R = -kRookValue
let Q = -kQueenValue
let K = -kKingValue

let p = -P
let n = -N
let b = -B
let r = -R
let q = -Q
let k = -K

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
