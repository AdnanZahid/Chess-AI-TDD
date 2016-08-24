//
//  View.swift
//  Chess
//
//  Created by Adnan Zahid on 8/24/16.
//  Copyright © 2016 Chess. All rights reserved.
//

protocol View {
    
    func input() -> Move?
    
    func output()
}