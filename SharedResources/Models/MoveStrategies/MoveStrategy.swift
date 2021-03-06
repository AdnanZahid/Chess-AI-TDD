//
//  MoveStrategy.swift
//  Chess
//
//  Created by Adnan Zahid on 8/16/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class MoveStrategy {
    
    var color: Color
    
    var directionsList: [(Int, Int)]
    
    init(color: Color, directionsList: [(Int, Int)]) {
        
        self.color = color
        self.directionsList = directionsList
    }
    
    func getMobility(_ position: Square) -> Int {
        
        return generateAllMoves(position).count
    }
    
    func generateAllMoves(_ position: Square) -> [Square] {
        
        var possibleMovesToSquaresList: [Square] = []
        
        for direction in directionsList {
            possibleMovesToSquaresList.append(contentsOf: generateMove(position, fileRankPair: direction))
        }
        
        return possibleMovesToSquaresList
    }
    
    func generateMove(_ position: Square, fileRankPair: (Int, Int)) -> [Square] {
        
        return []
    }
}
