//
//  Stack.swift
//  Chess
//
//  Created by Adnan Zahid on 8/23/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Stack {
    
    private var stackArray: [MoveState] = []
    
    func clear() {
        
        stackArray.removeAll()
    }
    
    func push(moveState: MoveState) {
        
        stackArray.append(moveState)
    }
    
    func pop() -> MoveState? {
        
        if let moveState = stackArray.last {
            
            stackArray.removeLast()
            
            return moveState
            
        } else {
            
            return nil
        }
    }
}