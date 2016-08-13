//
//  Utility.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

func fileAdvanceCheck(square1: Square!, square2: Square!) -> Bool {
    
    return square1.file != square2.file
}

func rankAdvanceCheck(square1: Square!, square2: Square!) -> Bool {
    
    return square1.rank != square2.rank
}

func fileAdvanceOnlyCheck(square1: Square!, square2: Square!) -> Bool {
    
    return fileAdvanceCheck(square1, square2: square2) && !rankAdvanceCheck(square1, square2: square2)
}

func rankAdvanceOnlyCheck(square1: Square!, square2: Square!) -> Bool {
    
    return !fileAdvanceCheck(square1, square2: square2) && rankAdvanceCheck(square1, square2: square2)
}

func fileOrRankAdvanceExclusiveCheck(square1: Square!, square2: Square!) -> Bool {
    
    return fileAdvanceOnlyCheck(square1, square2: square2) || rankAdvanceOnlyCheck(square1, square2: square2)
}

func fileOrRankAdvanceBothCheck(square1: Square!, square2: Square!) -> Bool {
    
    return fileAdvanceCheck(square1, square2: square2) && rankAdvanceCheck(square1, square2: square2)
}

func getFileAndRankAdvance(square1: Square!, square2: Square!) -> (Int, Int) {
    
    return (square2.file - square1.file, square2.rank - square1.rank)
}

func getFileAndRankSingleAdvance(fileRankPair: (Int, Int)) -> (Int, Int) {
    
    if fileRankPair.0 == 0 {
        
        return (0, fileRankPair.1/abs(fileRankPair.1))
    }
    
    if fileRankPair.1 == 0 {
        
        return (fileRankPair.0/abs(fileRankPair.0), 0)
    }
    
    return (fileRankPair.0/abs(fileRankPair.0), fileRankPair.1/abs(fileRankPair.1))
}