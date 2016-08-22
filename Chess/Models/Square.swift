//
//  Square.swift
//  Chess
//
//  Created by Adnan Zahid on 8/21/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Square: Equatable {
    
    let file: FileIndex
    let rank: RankIndex
    
    init(file: FileIndex, rank: RankIndex) {
        
        self.file = file
        self.rank = rank
    }
}