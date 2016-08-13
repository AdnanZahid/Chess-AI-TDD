//
//  TestUtility.swift
//  Chess
//
//  Created by Adnan Zahid on 8/11/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

/////////////////////////////////////////
// Operator overloading for Unit Tests //
/////////////////////////////////////////

/**
 * Get PIECE by PieceValue and perform the MOVE on it
 */
func > (pieceValue: Int, move: Move) -> Piece {
    
    let piece: Piece = PieceFactory.getPiece(pieceValue, position: move.fromSquare, delegate: nil)
    
    piece > move.toSquare
    
    return piece
}

/**
 * Get PIECE and move on it to the SQUARE
 */
func > (piece: Piece, toSquare: Square) {
    
    Board.sharedInstance.putPieceOnPosition(piece, square: piece.position)
    
    XCTAssertTrue(Board.sharedInstance.movePiece(piece.position, toSquare: toSquare))
}

/**
 * Get two SQUARE's and make a MOVE out of them
 */
func > (square1: Square, square2: Square) -> Move {
    
    return Move(fromSquare: square1, toSquare: square2)
}

/**
 * Get PIECE by PieceValue, place it on the SQUARE and then try getting a non-nil value
 */
func ?? (pieceValue: Int, square: Square) {
    
    let piece: Piece = PieceFactory.getPiece(pieceValue, position: square, delegate: nil)
    
    XCTAssertTrue(Board.sharedInstance.putPieceOnPosition(piece, square: square))
    
    XCTAssertNotNil(Board.sharedInstance.getPieceOnPosition(square))
    
    XCTAssertTrue(piece == Board.sharedInstance.getPieceOnPosition(square))
}

/**
 * Get PIECE by PieceValue and then place it on the SQUARE
 */
func >> (pieceValue: Int, square: Square) {
    
    let piece: Piece = PieceFactory.getPiece(pieceValue, position: square, delegate: nil)
    
    XCTAssertTrue(Board.sharedInstance.putPieceOnPosition(piece, square: square))
}