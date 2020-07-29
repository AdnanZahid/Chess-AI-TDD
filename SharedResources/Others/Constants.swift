//
//  Constants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

let kMaxPlies = 4

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
    
    [r, n, b, q, k, b, n, r],
    [p, p, p, p, p, p, p, p],
    [i, i, i, i, i, i, i, i],
    [i, i, i, i, i, i, i, i],
    [i, i, i, i, i, i, i, i],
    [i, i, i, i, i, i, i, i],
    [P, P, P, P, P, P, P, P],
    [R, N, B, Q, K, B, N, R]
]
