//
//  UIConstants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/24/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import SceneKit

let kStartingFilePosition: Int = 2
let kStartingRankPosition: Int = 2

let kPieceXOffset: Int = -11

let kPieceXRotation: Double = M_PI_2

let kPieceXScale: Double = 0.67
let kPieceYScale: Double = 0.67
let kPieceZScale: Double = 0.67

let kSquareWidth: CGFloat = 1.0
let kSquareHeight: CGFloat = 0.2
let kSquareLength: CGFloat = 1.0
let kSquareChamferRadius: CGFloat = 0.0

let kLightSquareRed: CGFloat = 0.9
let kLightSquareGreen: CGFloat = 0.85
let kLightSquareBlue: CGFloat = 0.8
let kLightSquareAlpha: CGFloat = 1.0

let kDarkSquareWhite: CGFloat = 0.15
let kDarkSquareAlpha: CGFloat = 1.0

let kAnimationDuration: CFTimeInterval = 0.5

let kWhiteCameraXPosition: Double = -5.5
let kWhiteCameraYPosition: Double = 12.0
let kWhiteCameraZPosition: Double = 5.0

let kBlackCameraXPosition: Double = 3.5
let kBlackCameraYPosition: Double = 12.0
let kBlackCameraZPosition: Double = -7.0

let kWhiteCameraXRotation: Double = 0.0
let kWhiteCameraYRotation: Double = 0.0
let kWhiteCameraZRotation: Double = 0.0

let kBlackCameraXRotation: Double = 0.0
let kBlackCameraYRotation: Double = 0.0
let kBlackCameraZRotation: Double = M_PI

let kLightXPosition: Double = 0.0
let kLightYPosition: Double = 10.0
let kLightZPosition: Double = 10.0

let kCapturedPieceZDistance: Float = 10.0

enum LiftPieceDirection: Float {
    
    case up   = 0.5
    case down = 0
}
