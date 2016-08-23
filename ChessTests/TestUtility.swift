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
 * GET PIECE by PieceValue and perform the MOVE on it, returns TRUE
 */
func > (pieceValue: Int, move: Move) -> Piece {
    
    /**
     * GETTING a PIECE from the PIECE FACTORY - Given the PIECE VALUE and STARTING SQUARE
     */
    let piece: Piece = PieceFactory.getPiece(pieceValue, position: move.fromSquare, delegate: nil)
    
    /**
     * PUTTING the PIECE on the given SQUARE
     */
    XCTAssertTrue(Board.sharedInstance.putPieceOnPosition(piece, square: piece.position!, pushToStack: false))
    
    /**
     * MOVING the PIECE to the given SQUARE - EXPECTING it to PASS
     */
    piece > move.toSquare
    
    return piece
}

/**
 * GET PIECE and move on it to the SQUARE, ASSERTS TRUE
 */
func > (piece: Piece, toSquare: Square) {
    
    XCTAssertTrue(Board.sharedInstance.movePiece(Move(fromSquare: piece.position!, toSquare: toSquare), checkCurrentTurn: false))
}

/**
 * GET PIECE by PieceValue and perform the MOVE on it, returns FALSE
 */
func !== (pieceValue: Int, move: Move) -> Piece {
    
    /**
     * GETTING a PIECE from the PIECE FACTORY - Given the PIECE VALUE and STARTING SQUARE
     */
    let piece: Piece = PieceFactory.getPiece(pieceValue, position: move.fromSquare, delegate: nil)
    
    /**
     * PUTTING the PIECE on the given SQUARE
     */
    XCTAssertTrue(Board.sharedInstance.putPieceOnPosition(piece, square: piece.position!, pushToStack: false))
    
    /**
     * MOVING the PIECE to the given SQUARE - EXPECTING it to FAIL
     */
    piece !== move.toSquare
    
    return piece
}

/**
 * GET PIECE and move on it to the SQUARE, ASSERTS FALSE
 */
func !== (piece: Piece, toSquare: Square) {
    
    XCTAssertFalse(Board.sharedInstance.movePiece(Move(fromSquare: piece.position!, toSquare: toSquare), checkCurrentTurn: false))
}

/**
 * GET two SQUARE's and make a MOVE out of them
 */
func > (fromSquare: Square, toSquare: Square) -> Move {
    
    return Move(fromSquare: fromSquare, toSquare: toSquare)
}

/**
 * GET PIECE by PieceValue, place it on the SQUARE and then try getting a non-nil value
 */
func ?? (pieceValue: Int, square: Square) {
    
    /**
     * GETTING a PIECE from the PIECE FACTORY - Given the PIECE VALUE and STARTING SQUARE
     */
    let piece: Piece = PieceFactory.getPiece(pieceValue, position: square, delegate: nil)
    
    /**
     * PUTTING the PIECE on the given SQUARE - ASSERTS TRUE
     */
    XCTAssertTrue(Board.sharedInstance.putPieceOnPosition(piece, square: square, pushToStack: false))
    
    /**
     * GET PIECE from the given SQUARE - ASSERTS NON NIL
     */
    XCTAssertNotNil(Board.sharedInstance.getPieceOnPosition(square))
    
    /**
     * COMPARE the given PIECE and PIECE returned from the SQUARE - ASSERTS TRUE
     */
    XCTAssertTrue(piece == Board.sharedInstance.getPieceOnPosition(square))
}

/**
 * GET PIECE by PieceValue and then place it on the SQUARE
 */
func >> (pieceValue: Int, square: Square) -> Piece {
    
    /**
     * GETTING a PIECE from the PIECE FACTORY - Given the PIECE VALUE and STARTING SQUARE
     */
    let piece: Piece = PieceFactory.getPiece(pieceValue, position: square, delegate: nil)
    
    /**
     * PUTTING the PIECE on the given SQUARE - ASSERTS TRUE
     */
    XCTAssertTrue(Board.sharedInstance.putPieceOnPosition(piece, square: square, pushToStack: false))
    
    return piece
}

/**
 * GET POSSIBLE MOVES LIST from PIECE
 */
prefix func ~ (piece: Piece) -> [Square] {
    
    return (piece.moveStrategy?.generateAllMoves(piece.position!))!
}