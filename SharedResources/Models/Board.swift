//
//  Board.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

class Board {
    
    static let sharedInstance = Board()
    var pieceArray = [[Piece?]](repeating: [Piece?](repeating: nil, count: kNumberOfSquaresAlongY), count: kNumberOfSquaresAlongX)
    var currentTurnColor: Color = Color.white
    var evaluationValue = 0
    var moveStateStack = Stack()
    
    init() {
        kNumberOfSquaresAlongX = piecesConfigurationArray[0].count
        kNumberOfSquaresAlongY = piecesConfigurationArray.count
        setupEmptyBoard()
    }
    
    func movePiece(_ move: Move, checkCurrentTurn: Bool) -> Bool {
        guard move.fromSquare != move.toSquare else { return false }
        guard let piece = getPieceOnPosition(move.fromSquare) else { return false }
        guard piece.color == currentTurnColor || checkCurrentTurn == false else { return false }
        guard piece.move(move.toSquare) else { return false }
        guard putPieceOnPosition(piece, square: move.toSquare, pushToStack: true) else { return false }
        return putEmptyPieceOnPosition(move.fromSquare)
    }
    
    func checkIfSquareIsEmpty(_ square: Square) -> Bool {
        guard pieceArray[square.rank.rawValue][square.file.rawValue] == EmptyPiece.sharedInstance else { return false }
        return true
    }
    
    func checkIfSquareIsNotNil(_ square: Square) -> Bool {
        guard pieceArray[square.rank.rawValue][square.file.rawValue] != nil else { return false }
        return true
    }
    
    func checkIfEmptyOrEnemyPieceExists(_ color: Color, square: Square) -> Bool {
        guard pieceArray[square.rank.rawValue][square.file.rawValue] != nil else { return false }
        return true
    }
    
    func checkForClearPath(_ move: Move) -> Bool {
        var result = false
        let fileRankPair = getFileAndRankAdvance(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
        var positionToCheck: Square = move.fromSquare
        let secondLastSquare: Square = move.toSquare - getFileAndRankSingleAdvance(fileRankPair)
        while positionToCheck != secondLastSquare {
            positionToCheck = positionToCheck + getFileAndRankSingleAdvance(fileRankPair)
            result = checkIfSquareIsEmpty(positionToCheck)
            if result == false { break }
        }
        return result
    }
    
    func getPieceOnPosition(_ square: Square) -> Piece? {
        guard let piece = pieceArray[square.rank.rawValue][square.file.rawValue],
            piece != EmptyPiece.sharedInstance else { return nil }
        return piece
    }
    
    func putPieceOnPosition(_ piece: Piece, square: Square, pushToStack: Bool) -> Bool {
        
        guard let existingPiece = pieceArray[square.rank.rawValue][square.file.rawValue] else {
            ErrorHandler.sharedInstance.logError(Error.InvalidDestination)
            return false
        }
        
        guard existingPiece.value != abs(kKingValue) else {
            ErrorHandler.sharedInstance.logError(Error.KingCapture)
            return false
        }
        
        guard existingPiece == EmptyPiece.sharedInstance || existingPiece.color != piece.color else {
            ErrorHandler.sharedInstance.logError(Error.FriendlyFire)
            return false
        }
        
        if piece != EmptyPiece.sharedInstance {
            existingPiece.captured = true
        }
        
        pieceArray[square.rank.rawValue][square.file.rawValue] = piece
        
        if pushToStack {
            moveStateStack.push(MoveState(fromPieceState: PieceState(piece: piece, position: piece.position!, hasMoved: piece.hasMoved!),
                                          toPieceState: PieceState(piece: existingPiece, position: square, hasMoved: piece.hasMoved!)))
        }
        piece.updatePosition(square, changeHasMoved: pushToStack)
        return true
    }
    
    func undoMove() {
        let moveState = moveStateStack.pop()!
        putPieceOnPosition(moveState.fromPieceState.piece, square: moveState.fromPieceState.position, pushToStack: false)
        putPieceOnPosition(moveState.toPieceState.piece, square: moveState.toPieceState.position, pushToStack: false)
        moveState.fromPieceState.piece.hasMoved = moveState.fromPieceState.hasMoved
        moveState.toPieceState.piece.hasMoved = moveState.toPieceState.hasMoved
        moveState.fromPieceState.piece.captured = false
        moveState.toPieceState.piece.captured = false
    }
    
    func putEmptyPieceOnPosition(_ square: Square) -> Bool {
        guard pieceArray[square.rank.rawValue][square.file.rawValue] != nil else { return false }
        pieceArray[square.rank.rawValue][square.file.rawValue] = EmptyPiece.sharedInstance
        return true
    }
    
    func setupEmptyBoard() {
        allPiecesRankEnumeration.forEach { rank in
            allPiecesFileEnumeration.forEach { file in
                pieceArray[rank][file] = EmptyPiece.sharedInstance
            }
        }
    }
    
    func setupPieceBoard(_ color: Color, pieceDelegate: PieceDelegate) -> [Piece] {
        var piecesList: [Piece] = []
        var pieceRankEnumeration = blackPiecesRankEnumeration
        if color == Color.white {
            pieceRankEnumeration = whitePiecesRankEnumeration
        }
        for rank in pieceRankEnumeration {
            for file in allPiecesFileEnumeration {
                let piece = PieceFactory.getPiece(
                    piecesConfigurationArray[rank][file],
                    position: Square(
                        file: FileIndex(rawValue: file)!,
                        rank: RankIndex(rawValue: rank)!), delegate: pieceDelegate)
                pieceArray[rank][file] = piece
                piecesList.append(piece)
            }
        }
        return piecesList
    }
}
