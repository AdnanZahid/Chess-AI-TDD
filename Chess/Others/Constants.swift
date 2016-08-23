//
//  Constants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

let kMaxPlies: Int = 2

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