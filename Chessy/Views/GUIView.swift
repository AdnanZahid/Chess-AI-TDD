//
//  GUIView.swift
//  Chess
//
//  Created by Adnan Zahid on 8/24/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import SceneKit

class GUIView: SCNView, InputHandler, OutputHandler {
    
    var isGUIViewAvailable: Bool = true
    
    weak var inputHandlerDelegate: InputHandlerDelegate?
    
    var cameraNode: SCNNode?
    var liftedPiece: SCNNode?
    var liftedPieceMovesBoard: SCNNode?
    
    override func awakeFromNib() {
        
        scene = SCNScene.init()
        
        allowsCameraControl = true
        showsStatistics = true
        backgroundColor = UIColor.blackColor()
        
        cameraNode = SCNNode.init()
        cameraNode?.camera = SCNCamera.init()
        scene?.rootNode.addChildNode(cameraNode!)
        
        cameraNode?.position = SCNVector3(kWhiteCameraXPosition, kWhiteCameraYPosition, kWhiteCameraZPosition)
        cameraNode?.eulerAngles = SCNVector3(kWhiteCameraXRotation, kWhiteCameraYRotation, kWhiteCameraZRotation)
        
        let cameraTarget: SCNNode = SCNNode.init()
        cameraTarget.position = SCNVector3(kWhiteCameraXPosition, 0.0, kWhiteCameraXPosition)
        let lookAtCenter: SCNLookAtConstraint = SCNLookAtConstraint.init(target: cameraTarget)
        
        cameraNode?.constraints = [lookAtCenter]
        
        let lightNode: SCNNode = SCNNode.init()
        lightNode.light = SCNLight.init()
        lightNode.light?.type = SCNLightTypeOmni
        lightNode.position = SCNVector3(kLightXPosition, kLightYPosition, kLightZPosition)
        scene?.rootNode.addChildNode(lightNode)
        
        let ambientLightNode: SCNNode = SCNNode.init()
        ambientLightNode.light = SCNLight.init()
        ambientLightNode.light?.type = SCNLightTypeAmbient
        ambientLightNode.light?.color = UIColor.darkGrayColor()
        scene?.rootNode.addChildNode(ambientLightNode)
        
//        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(GUIView.handleTap(_:)))
//        self.gestureRecognizers?.append(tapGesture)
        
        scene?.rootNode.addChildNode(getChessBoard())
    }
    
    func input() {
        
//        outputHandlerDelegate?.didTakeInput(currentPlayer.generateMove()!)
    }
    
    func output() {
        
        for rank in (allPiecesRankEnumeration).reverse() {
            for file in allPiecesFileEnumeration {
                
                if let _ = Board.sharedInstance.pieceArray[rank][file] {
                    
                    let piece: Piece = Board.sharedInstance.pieceArray[rank][file]!
                    
                    if piece != EmptyPiece.sharedInstance {
                        
                        let pieces: SCNScene = SCNScene.init(named: "art.scnassets/ChessPieces.dae")!
                        
                        let node: SCNNode = pieces.rootNode.childNodeWithName(piece.symbol, recursively: true)!
                        
                        if piece.color == Color.black {
                            
                            let blackMaterial: SCNMaterial = node.geometry!.firstMaterial!
                            blackMaterial.diffuse.contents = UIColor.init(white:kDarkSquareWhite, alpha:kDarkSquareAlpha)
                            node.geometry!.firstMaterial = blackMaterial
                        }
                        
                        node.position = SCNVector3(file + kPieceXOffset, 0, -rank)
                        node.eulerAngles = SCNVector3(kPieceXRotation, 0.0, 0.0)
                        node.scale = SCNVector3(kPieceXScale, kPieceYScale, kPieceZScale)
                        
                        scene?.rootNode.addChildNode(node)
                    }
                }
            }
        }
    }
    
    func getChessBoard() -> SCNNode {
        
        let lightSquare: SCNBox = SCNBox.init(width: kSquareWidth, height: kSquareHeight, length: kSquareLength, chamferRadius: kSquareChamferRadius)
        let darkSquare: SCNBox = lightSquare.copy() as! SCNBox
        
        let lightMaterial: SCNMaterial = SCNMaterial.init()
        let lightColor: UIColor = UIColor.init(red: kLightSquareRed, green: kLightSquareGreen, blue: kLightSquareBlue, alpha: kLightSquareAlpha)
        lightMaterial.diffuse.contents = lightColor
        
        let darkMaterial: SCNMaterial = lightMaterial.copy() as! SCNMaterial
        darkMaterial.diffuse.contents = UIColor.init(white: kDarkSquareWhite, alpha: kDarkSquareAlpha)
        
        lightSquare.firstMaterial = lightMaterial
        darkSquare.firstMaterial = darkMaterial
        
        let boardNode: SCNNode = SCNNode.init()
        boardNode.position = SCNVector3Zero
        
        for rank in (allPiecesRankEnumeration).reverse() {
            for file in allPiecesFileEnumeration {
                
                let isBlack: Bool = (rank + file) % 2 != 0
                let geometry: SCNGeometry = isBlack ? darkSquare : lightSquare
                
                let squareNode: SCNNode = SCNNode.init(geometry: geometry)
                
                squareNode.position = SCNVector3(-file, 0, -rank)

                boardNode.addChildNode(squareNode)
            }
        }
        
        return boardNode
    }
    
    func handleTap(gestureRecognizer: UIGestureRecognizer) {
    
        let point: CGPoint = gestureRecognizer.locationInView(self)
        let hitResults: [SCNHitTestResult] = hitTest(point, options: nil)
        
        if hitResults.count > 0 {
            
            let result: SCNHitTestResult = hitResults[0]
            
            let node: SCNNode = result.node
            
            animateWithAction({
            
                //////////////////////////////////////////////////////////////
            })
        }
    }
    
    func animateWithAction(action: () -> ()) {
        
        SCNTransaction.begin()
        SCNTransaction.setAnimationDuration(kAnimationDuration)
        action()
        SCNTransaction.commit()
    }
}