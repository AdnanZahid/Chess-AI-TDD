//
//  Board.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

let allPiecesRankEnumeration: Range = RankIndex.k1.rawValue ... RankIndex.k8.rawValue
let allPiecesFileEnumeration: Range = FileIndex.kA.rawValue ... FileIndex.kH.rawValue

let whitePiecesRankEnumeration: Range = RankIndex.k1.rawValue ... RankIndex.k2.rawValue
let blackPiecesRankEnumeration: Range = RankIndex.k7.rawValue ... RankIndex.k8.rawValue

import Foundation

class Board {
    
    static let sharedInstance = Board()
    
    var pieceArray = [[Piece?]](count: kNumberOfSquaresAlongX, repeatedValue: [Piece?](count: kNumberOfSquaresAlongY, repeatedValue: nil))
    
    init() {
        
        setupEmptyBoard()
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
        
        if let piece = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            if piece != EmptyPiece.sharedInstance {
                
                return piece
            }
        }
            
        return nil
    }
    
    func putPieceOnPosition(piece: Piece, square: Square) -> Bool {
        
        var result: Bool = false
        
        if let existingPiece = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            if existingPiece == EmptyPiece.sharedInstance || existingPiece.color != piece.color {
                
                pieceArray[square.rank.rawValue][square.file.rawValue] = piece
                
                result = true
            }
        }
        
        return result
    }
    
    func putEmptyPieceOnPosition(square: Square) -> Bool {
        
        if let _ = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            pieceArray[square.rank.rawValue][square.file.rawValue] = EmptyPiece.sharedInstance
            
            return true
            
        } else {
            
            return false
        }
    }
    
    func setupEmptyBoard() {
        
        for j in allPiecesRankEnumeration {
            for i in allPiecesFileEnumeration {
                
                pieceArray[j][i] = EmptyPiece.sharedInstance
            }
        }
    }
    
    func setupPieceBoard(color: Color) {
        
        var pieceRankEnumeration = blackPiecesRankEnumeration
        
        if color == Color.white {
            
            pieceRankEnumeration = whitePiecesRankEnumeration
            
        }
        
        for j in pieceRankEnumeration {
            for i in allPiecesFileEnumeration {
                
                let piece: Piece = PieceFactory.getPiece(
                                                         piecesConfigurationArray[j][i],
                                                         position: Square(
                                                                          file: FileIndex(rawValue: i)!,
                                                                          rank: RankIndex(rawValue: j)!), delegate: nil)
                
                pieceArray[j][i] = piece
            }
        }
    }
    
    func printBoard() {
        
        for j in (allPiecesRankEnumeration).reverse() {
            for i in allPiecesFileEnumeration {
                
                if let _ = pieceArray[j][i] {

                    var symbol: String = pieceArray[j][i]!.symbol
                    
                    if pieceArray[j][i]!.color == Color.black {
                        symbol = symbol.lowercaseString
                    }
                    
                    print(symbol, separator: "", terminator: " ")
                    
                } else {

                    print(kNilSymbol, separator: "", terminator: " ")
                }
            }
            
            print(kNewLineSymbol, separator: "", terminator: "")
        }
    }
}