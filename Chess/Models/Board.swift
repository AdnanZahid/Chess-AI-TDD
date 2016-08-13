//
//  Board.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import Foundation

class Board {
    
    static let sharedInstance = Board()
    
    var pieceArray = [[Piece?]](count: kNumberOfSquaresAlongX, repeatedValue: [Piece?](count: kNumberOfSquaresAlongY, repeatedValue: nil))
    
    init() {
        
        setupPieceBoard()
    }
    
    func movePiece(fromSquare: Square, toSquare: Square) -> Bool {
        
        var result: Bool = false
        
        if fromSquare != toSquare {
            
            if let piece = getPieceOnPosition(fromSquare) {
                
                if putEmptyPieceOnPosition(fromSquare) {
                
                    result = piece.move(toSquare) && putPieceOnPosition(piece, square: toSquare)
                }
            }
        }
        
        return result
    }
    
    func getPieceOnPosition(square: Square) -> Piece? {
        
        if let piece = pieceArray[square.file.rawValue][square.rank.rawValue] {
            
            if piece != EmptyPiece.sharedInstance {
                
                return piece
            }
        }
            
        return nil
    }
    
    func putPieceOnPosition(piece: Piece, square: Square) -> Bool {
        
        var result: Bool = false
        
        if let existingPiece = pieceArray[square.file.rawValue][square.rank.rawValue] {
            
            if existingPiece == EmptyPiece.sharedInstance || existingPiece.color != piece.color {
                
                pieceArray[square.file.rawValue][square.rank.rawValue] = piece
                
                result = true
            }
        }
        
        return result
    }
    
    func putEmptyPieceOnPosition(square: Square) -> Bool {
        
        if let _ = pieceArray[square.file.rawValue][square.rank.rawValue] {
            
            pieceArray[square.file.rawValue][square.rank.rawValue] = EmptyPiece.sharedInstance
            
            return true
            
        } else {
            
            return false
        }
    }
    
    func setupPieceBoard() {
        
        for i in FileIndex.kA.rawValue ... FileIndex.kH.rawValue {
            for j in RankIndex.k1.rawValue ... RankIndex.k8.rawValue {
                
                pieceArray[i][j] = EmptyPiece.sharedInstance
                
//                pieceArray[i][j] = PieceFactory.getPiece(
//                                                         piecesConfigurationArray[i][j],
//                                                         position: Square(
//                                                                          file: FileIndex(rawValue: i)!,
//                                                                          rank: RankIndex(rawValue: j)!))
            }
        }
    }
}