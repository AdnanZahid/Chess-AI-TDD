//
//  OperatorOverloadingUtility.swift
//  Chess
//
//  Created by Adnan Zahid on 8/11/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

func == (object1: AnyObject!, object2: AnyObject!) -> Bool {
    
    return object_getClassName(object1) == object_getClassName(object2)
}

func != (object1: AnyObject!, object2: AnyObject!) -> Bool {
    
    return !(object_getClassName(object1) == object_getClassName(object2))
}

func == (square1: Square!, square2: Square!) -> Bool {
    
    return square1.file == square2.file
        && square1.rank == square2.rank
}

func != (square1: Square!, square2: Square!) -> Bool {
    
    return !(square1 == square2)
}

func - (fileIndex1: FileIndex, fileIndex2: FileIndex) -> Int {
    
    return fileIndex1.rawValue - fileIndex2.rawValue
}

func - (rankIndex1: RankIndex, rankIndex2: RankIndex) -> Int {
    
    return rankIndex1.rawValue - rankIndex2.rawValue
}

func + (fileIndex: FileIndex, number: Int) -> FileIndex {
    
    return FileIndex(rawValue: fileIndex.rawValue + number)!
}

func + (rankIndex: RankIndex, number: Int) -> RankIndex {
    
    return RankIndex(rawValue: rankIndex.rawValue + number)!
}

func + (square: Square, fileRankPair: (Int, Int)) -> Square {
    
    return Square(file: square.file + fileRankPair.0, rank: square.rank + fileRankPair.1)
}