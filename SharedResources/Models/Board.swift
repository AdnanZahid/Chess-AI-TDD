//
//  Board.swift
//  Chess
//
//  Created by Adnan Zahid on 8/8/16.
//  Copyright © 2016 Chess. All rights reserved.
//

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
    static let sharedInstance: Board = Board()
    
    /**
     * Fill the board with EMPTY pieces (piece type EMPTY)
     */
    var pieceArray = [[Piece?]](count: kNumberOfSquaresAlongX, repeatedValue: [Piece?](count: kNumberOfSquaresAlongY, repeatedValue: nil))
    
    /**
     * Assign the CURRENT TURN COLOR to WHITE by default - Later it changes according to turns
     */
    var currentTurnColor: Color = Color.white
    
    /**
     * EVALUATION VALUE for computing AI MOVES - POSITIVE for WHITE domination and NEGATIVE for BLACK domination
     */
    var evaluationValue: Int = 0
    
    /**
     * A STACK for storing MOVESTATES - So we can UNDO them (helps in AI MOVES)
     */
    var moveStateStack: Stack = Stack()
    
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
    func movePiece(move: Move, checkCurrentTurn: Bool) -> Bool {
        
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
                if piece.color == currentTurnColor || checkCurrentTurn == false {
                    
                    /**
                     * Check if PIECE can MOVE
                     */
                    if piece.move(move.toSquare) {
                        
                        /**
                         * Check if PIECE can be put on the DESTINATION SQUARE
                         */
                        if putPieceOnPosition(piece, square: move.toSquare, pushToStack: true) {
                            
                            /**
                             * Check if an EMPTY piece can be PUT on STARTING POSITION
                             */
                            result = putEmptyPieceOnPosition(move.fromSquare)
                        }
                    } else {
                        ErrorHandler.sharedInstance.logError(Error.InvalidMove)
                    }
                } else {
                    ErrorHandler.sharedInstance.logError(Error.WrongTurn)
                }
            } else {
                ErrorHandler.sharedInstance.logError(Error.InvalidPiece)
            }
        } else {
            ErrorHandler.sharedInstance.logError(Error.SamePosition)
        }
        
        return result
    }
    
    /**
     * CHECK if given SQUARE is EMPTY
     */
    func checkIfSquareIsEmpty(square: Square) -> Bool {
        
        var result: Bool = false
        
        /**
         * Check for an EMPTY piece
         */
        if pieceArray[square.rank.rawValue][square.file.rawValue] == EmptyPiece.sharedInstance {
            
            result = true
        }
        
        return result
    }
    
    /**
     * CHECK if given SQUARE is not OUT OF BOUNDS
     */
    func checkIfSquareIsNotNil(square: Square) -> Bool {
        
        var result: Bool = false
        
        /**
         * Check for a NIL or out of bounds piece
         */
        if let _ = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            result = true
        }
        
        return result
    }
    
    /**
     * CHECK if given SQUARE is EMPTY or occupied by the ENEMY
     */
    func checkIfEmptyOrEnemyPieceExists(color: Color, square: Square) -> Bool {
        
        var result: Bool = false
        
        /**
         * CHECK if given SQUARE is EMPTY or occupied by the ENEMY
         */
        if let piece: Piece = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            result = piece.color != color || piece == EmptyPiece.sharedInstance
        }
        
        return result
    }
    
    /**
     * CHECK for CLEAR PATH for a MOVE
     */
    func checkForClearPath(move: Move) -> Bool {
        
        var result: Bool = true
        
        /**
         * GET a FILE RANK PAIR from a given MOVE - FILE RANK PAIR indicates the DIRECTION
         */
        let fileRankPair = getFileAndRankAdvance(Move(fromSquare: move.fromSquare, toSquare: move.toSquare))
        
        /**
         * GET the STARTING POSITION
         */
        var positionToCheck: Square = move.fromSquare
        
        /**
         * GET the POSITION BEFORE the ENDING POSITION - Call it SECOND LAST SQUARE
         */
        let secondLastSquare: Square = move.toSquare - getFileAndRankSingleAdvance(fileRankPair)
        
        /**
         * CHECK IF STARTING POSITION and SECOND LAST SQUARE are not the SAME - In other words, CHECK if we have to CHECK for a CLEAR PATH
         */
        while positionToCheck != secondLastSquare {
            
            /**
             * INCREMENT the CURRENT POSITION STEP by STEP towards the FINAL POSITION
             */
            positionToCheck = positionToCheck + getFileAndRankSingleAdvance(fileRankPair)
            
            /**
             * CHECK IF the CURRENT POSITION is EMPTY - Hence FIND OUT if a CLEAR PATH exists
             */
            result = checkIfSquareIsEmpty(positionToCheck)
            
            /**
             * IF there is an OBSTACLE in BETWEEN, then do NOT CHECK other SQUARES
             */
            if result == false {
                
                break
            }
        }
        
        return result
    }
    
    /**
     * GET a PIECE from the given SQUARE
     */
    func getPieceOnPosition(square: Square) -> Piece? {
        
        /**
         * Can not GET a piece from out of bounds
         */
        if let piece: Piece = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
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
    func putPieceOnPosition(piece: Piece, square: Square, pushToStack: Bool) -> Bool {
        
        var result: Bool = false
        
        /**
         * Can not go out of bounds
         */
        if let existingPiece: Piece = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            /**
             * King can not be captured
             */
            if true || existingPiece.value != abs(kKingValue) {
                
                /**
                 * Destination square is empty
                 */
                if existingPiece == EmptyPiece.sharedInstance
                    
                    /**
                     * No friendly fire
                     */
                    || existingPiece.color != piece.color {
                    
                    if piece != EmptyPiece.sharedInstance {
                        
                        existingPiece.captured = true
                    }
                    
                    pieceArray[square.rank.rawValue][square.file.rawValue] = piece
                    
                    if pushToStack {
                        
                        /**
                         * Storing the MOVESTATE in a stack - So we can UNDO them (helps in AI MOVES)
                         */
                        moveStateStack.push(MoveState(
                            
                            /**
                             * FROM PIECE STATE
                             */
                            fromPieceState: PieceState(piece: piece, position: piece.position!, hasMoved: piece.hasMoved!),
                            
                            /**
                             * TO PIECE STATE
                             */
                            toPieceState: PieceState(piece: existingPiece, position: square, hasMoved: piece.hasMoved!)))
                    }
                    
                    result = true
                    
                    piece.updatePosition(square, changeHasMoved: pushToStack)
                    
                } else {
                    ErrorHandler.sharedInstance.logError(Error.FriendlyFire)
                }
            } else {
                ErrorHandler.sharedInstance.logError(Error.KingCapture)
            }
        } else {
            ErrorHandler.sharedInstance.logError(Error.InvalidDestination)
        }
        
        return result
    }
    
    /**
     * UNDO the TOP MOVE in MOVESTATESTACK (helps in AI MOVES)
     */
    func undoMove() {
        
        let moveState: MoveState = moveStateStack.pop()!
        
        /**
         * PUT the PIECES back where they were BEFORE the MOVE
         */
        putPieceOnPosition(moveState.fromPieceState.piece, square: moveState.fromPieceState.position, pushToStack: false)
        putPieceOnPosition(moveState.toPieceState.piece, square: moveState.toPieceState.position, pushToStack: false)
        
        /**
         * RESET HASMOVED flag of BOTH the PIECES
         */
        moveState.fromPieceState.piece.hasMoved = moveState.fromPieceState.hasMoved
        moveState.toPieceState.piece.hasMoved = moveState.toPieceState.hasMoved
        
        /**
         * RESET CAPTURED flag of BOTH the PIECES
         */
        moveState.fromPieceState.piece.captured = false
        moveState.toPieceState.piece.captured = false
    }
    
    /**
     * PUT an EMPTY PIECE on the given SQUARE
     */
    func putEmptyPieceOnPosition(square: Square) -> Bool {
        
        var result: Bool = false
        
        /**
         * Check if SQUARE is not OUT OF BOUNDS
         */
        if let _ = pieceArray[square.rank.rawValue][square.file.rawValue] {
            
            pieceArray[square.rank.rawValue][square.file.rawValue] = EmptyPiece.sharedInstance
            
            result = true
            
        }
        
        return result
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
    func setupPieceBoard(color: Color, pieceDelegate: PieceDelegate) -> [Piece] {
        
        /**
         * Set up a LIST of PIECES to be passed to the corresponding PLAYER
         */
        var piecesList: [Piece] = []
        
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
                        rank: RankIndex(rawValue: j)!), delegate: pieceDelegate)
                
                pieceArray[j][i] = piece
                
                /**
                 * Add this PIECE to the LIST of PIECES
                 */
                piecesList.append(piece)
            }
        }
        
        /**
         * Return the LIST of PIECES to the corresponding PLAYER
         */
        return piecesList
    }
}