//
//  ArrayExtension.swift
//  Chess
//
//  Created by Adnan Zahid on 8/16/16.
//  Copyright © 2016 Chess. All rights reserved.
//

extension Array {
    
    mutating func remove <U: Equatable> (_ object: U) {
        
        for index in count - 1 ... 0 {
            
            if let element = [index] as? U {
                
                if element == object {
                    
                    self.remove(at: index)
                }
            }
        }
    }
}
