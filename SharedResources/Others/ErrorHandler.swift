//
//  ErrorHandler.swift
//  Chess
//
//  Created by Adnan Zahid on 8/23/16.
//  Copyright © 2016 Chess. All rights reserved.
//

enum Error: String {
    case FriendlyFire       = "Can not captured own piece"
    case InvalidMove        = "This move is not valid"
    case InvalidPiece       = "No piece is selected"
    case InvalidDestination = "Destination out of bounds"
    case UnderCheck         = "Your king is under check"
    case UnderCheckmate     = "Your king is under checkmate"
    case SamePosition       = "Starting and ending positions are same"
    case WrongTurn          = "It is not your turn"
    case KingCapture        = "King can never be captured"
    
    case None               = ""
}

class ErrorHandler {
    
    static let sharedInstance = ErrorHandler()
    
    var error: Error = Error.None
    
    func logError(_ error: Error) {
        
        self.error = error
    }
}
