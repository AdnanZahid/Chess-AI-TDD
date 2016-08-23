//
//  ArrayExtension.swift
//  Chess
//
//  Created by Adnan Zahid on 8/16/16.
//  Copyright © 2016 Chess. All rights reserved.
//

extension Array {
    
    mutating func remove <U: Equatable> (object: U) {
        
        for i in count - 1 ... 0 {
            
            if let element = [i] as? U {
                
                if element == object {
                    
                    removeAtIndex(i)
                }
            }
        }
    }
}