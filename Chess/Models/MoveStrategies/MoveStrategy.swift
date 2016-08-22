//
//  MoveStrategy.swift
//  Chess
//
//  Created by Adnan Zahid on 8/16/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class MoveStrategy {
    
    var directionsList: [(Int, Int)]
    
    init(directionsList: [(Int, Int)]) {
        
        self.directionsList = directionsList
    }
    
    func generateAllMoves(position: Square) -> [Square] {
        
        var possibleMovesToSquaresList: [Square] = []
        
        for direction in directionsList {
            possibleMovesToSquaresList.appendContentsOf(generateMove(position, fileRankPair: direction))
        }
        
        return possibleMovesToSquaresList
    }
    
    func generateMove(position: Square, fileRankPair: (Int, Int)) -> [Square] {
        
        return []
    }
}