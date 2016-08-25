//
//  InputOutputHandlers.swift
//  Chess
//
//  Created by Adnan Zahid on 8/24/16.
//  Copyright © 2016 Chess. All rights reserved.
//

protocol InputHandlerDelegate: class {
    
    func didTakeInput(move: Move)
}

protocol InputHandler {
    
    weak var inputHandlerDelegate: InputHandlerDelegate? { get set }
    
    func input()
}

protocol OutputHandler: InputHandler {
    
    var isGUIViewAvailable: Bool { get }
    
    func setup()
    
    func output(move: Move)
    
    func cancelMove()
}