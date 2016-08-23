//
//  Utility.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

func fileAdvanceCheck(move: Move) -> Bool {
    
    return move.fromSquare.file != move.toSquare.file
}

func rankAdvanceCheck(move: Move) -> Bool {
    
    return move.fromSquare.rank != move.toSquare.rank
}

func fileAdvanceOnlyCheck(move: Move) -> Bool {
    
    return fileAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) && !rankAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func rankAdvanceOnlyCheck(move: Move) -> Bool {
    
    return !fileAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) && rankAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func fileOrRankAdvanceExclusiveCheck(move: Move) -> Bool {
    
    return fileAdvanceOnlyCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) || rankAdvanceOnlyCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func fileOrRankAdvanceBothCheck(move: Move) -> Bool {
    
    return fileAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare)) && rankAdvanceCheck(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
}

func getFileAndRankAdvance(move: Move) -> (Int, Int) {
    
    return (move.toSquare.file - move.fromSquare.file, move.toSquare.rank - move.fromSquare.rank)
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