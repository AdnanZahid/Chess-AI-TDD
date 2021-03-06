//
//  Utility.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

func fileAdvanceCheck(_ move: Move) -> Bool {
    
    return move.fromSquare.file != move.toSquare.file
}

func rankAdvanceCheck(_ move: Move) -> Bool {
    
    return move.fromSquare.rank != move.toSquare.rank
}

func fileAdvanceOnlyCheck(_ move: Move) -> Bool {
    
    return fileAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) && !rankAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func rankAdvanceOnlyCheck(_ move: Move) -> Bool {
    
    return !fileAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) && rankAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func fileOrRankAdvanceExclusiveCheck(_ move: Move) -> Bool {
    
    return fileAdvanceOnlyCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) || rankAdvanceOnlyCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func fileOrRankAdvanceBothCheck(_ move: Move) -> Bool {
    
    return fileAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) && rankAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func getFileAndRankAdvance(_ move: Move) -> (Int, Int) {
    
    return (move.toSquare.file - move.fromSquare.file, move.toSquare.rank - move.fromSquare.rank)
}

func getFileAndRankSingleAdvance(_ fileRankPair: (Int, Int)) -> (Int, Int) {
    
    if fileRankPair.0 == 0 {
        
        return (0, fileRankPair.1/abs(fileRankPair.1))
    }
    
    if fileRankPair.1 == 0 {
        
        return (fileRankPair.0/abs(fileRankPair.0), 0)
    }
    
    return (fileRankPair.0/abs(fileRankPair.0), fileRankPair.1/abs(fileRankPair.1))
}
