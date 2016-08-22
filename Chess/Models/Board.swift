//
//  Board.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

/**
 * RANK ENUMERATION for all squares on the board
 */
let allPiecesRankEnumeration: Range = RankIndex.k1.rawValue ... RankIndex.k8.rawValue

/**
 * FILE ENUMERATION for all squares on the board
 */
let allPiecesFileEnumeration: Range = FileIndex.kA.rawValue ... FileIndex.kH.rawValue

/**
 * RANK ENUMERATION for squares occupied by WHITE PIECES
 */
let whitePiecesRankEnumeration: Range = RankIndex.k1.rawValue ... RankIndex.k2.rawValue

/**
 * RANK ENUMERATION for squares occupied by BLACK PIECES
 */
let blackPiecesRankEnumeration: Range = RankIndex.k7.rawValue ... RankIndex.k8.rawValue

class Board {
    
    /**
     * This class is used as a SINGLETON - Hence the SHARED INSTANCE
     */
    static let sharedInstance = Board()
    
    /**
     * Fill the board with EMPTY pieces (piece type EMPTY)
     */
    var pieceArray = [[Piece?]](count: kNumberOfSquaresAlongX, repeatedValue: [Piece?](count: kNumberOfSquaresAlongY, repeatedValue: nil))
    
    /**
     * Assign the CURRENT TURN COLOR to WHITE by default - Later it changes according to turns
     */
    var currentTurnColor: Color = Color.white
    
    /**
     * Initialize an EMPTY board
     */
    init() {
        
        /**
         * Fill the board with EMPTY pieces (piece type EMPTY)
         */
        setupEmptyBoard()
    }
    
    /**
     * MOVE PIECE from STARTING SQUARE to ENDING SQUARE
     */
    func movePiece(move: Move) -> Bool {
        
        var result: Bool = false
        
        /**
         * STARTING and ENDING squares are not the same
         */
        if move.fromSquare != move.toSquare {
            
            /**
             * PIECE is not EMPTY or OUT OF BOUNDS
             */
            if let piece = getPieceOnPosition(move.fromSquare) {
                
                /**
                 * This PIECE COLOR has the CURRENT TURN
                 */
                if piece.color == currentTurnColor {
                
                    /**
                     * Put EMPTY piece on STARTING POSITION
                     */
                    if putEmptyPieceOnPosition(move.fromSquare) {
                        
                        /**
                         * Check if PIECE can MOVE and PIECE can be put on the DESTINATION SQUARE
                         */
                        result = piece.move(move.toSquare) && putPieceOnPosition(piece, square: move.toSquare)
                    }
                }
            }
        }
        
        return result
    }
    
    /**
     * CHECK if given SQUARE is EMPTY
     */
    func checkIfSquareIsEmpty(square: Square) -> Bool {
        
        /**
         * Check for an EMPTY piece
         */
        if pieceArray[square.rank.rawValue][square.file.rawValue] == EmptyPiece.sharedInstance {
            
            return true
        }
        
        return false
    }
    
    /**
     * CHECK if given SQUARE is not OUT OF BOUNDS
     */
    func checkIfSquareIsNotNil(square: Square) -> Bool {
        
        /**
         * Check for a NIL or out of bounds piece
         */
        if let _ = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            return true
        }
        
        return false
    }
    
    /**
     * GET a PIECE from the given SQUARE
     */
    func getPieceOnPosition(square: Square) -> Piece? {
        
        /**
         * Can not GET a piece from out of bounds
         */
        if let piece = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            /**
             * Can not GET an empty piece
             */
            if piece != EmptyPiece.sharedInstance {
                
                return piece
            }
        }
        
        return nil
    }
    
    /**
     * PUT a given PIECE on the given SQUARE
     */
    func putPieceOnPosition(piece: Piece, square: Square) -> Bool {
        
        var result: Bool = false
        
        /**
         * Can not go out of bounds
         */
        if let existingPiece = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            /**
             * King can not be captured
             */
            if existingPiece.value != abs(kKingValue) {
                
                /**
                 * Destination square is empty
                 */
                if existingPiece == EmptyPiece.sharedInstance
                    
                    /**
                     * No friendly fire
                     */
                    || existingPiece.color != piece.color {
                    
                    pieceArray[square.rank.rawValue][square.file.rawValue] = piece
                    
                    result = true
                }
            }
        }
        
        return result
    }
    
    /**
     * PUT an EMPTY PIECE on the given SQUARE
     */
    func putEmptyPieceOnPosition(square: Square) -> Bool {
        
        /**
         * Check if SQUARE is not OUT OF BOUNDS
         */
        if let _ = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            pieceArray[square.rank.rawValue][square.file.rawValue] = EmptyPiece.sharedInstance
            
            return true
            
        }
        
        return false
    }
    
    /**
     * Fill the board with EMPTY pieces (piece type EMPTY)
     */
    func setupEmptyBoard() {
        
        for j in allPiecesRankEnumeration {
            for i in allPiecesFileEnumeration {
                
                pieceArray[j][i] = EmptyPiece.sharedInstance
            }
        }
    }
    
    /**
     * Fill the board with PIECES of the given COLOR
     */
    func setupPieceBoard(color: Color) {
        
        /**
         * Pick BLACK RANK ENUMERATION by default
         */
        var pieceRankEnumeration = blackPiecesRankEnumeration
        
        if color == Color.white {
            
            /**
             * Pick WHITE RANK ENUMERATION if the given COLOR is WHITE
             */
            pieceRankEnumeration = whitePiecesRankEnumeration
            
        }
        
        /**
         * Enumerate over the RANK area occupied by the pieces of given COLOR
         */
        for j in pieceRankEnumeration {
            
            /**
             * Enumerate over all the FILES
             */
            for i in allPiecesFileEnumeration {
                
                /**
                 * Get values from a PRE-CONFIGURED ARRAY - DEFAULT CHESS STARTING CONFIGURATION
                 */
                let piece: Piece = PieceFactory.getPiece(
                    piecesConfigurationArray[j][i],
                    position: Square(
                        file: FileIndex(rawValue: i)!,
                        rank: RankIndex(rawValue: j)!), delegate: nil)
                
                pieceArray[j][i] = piece
            }
        }
    }
}