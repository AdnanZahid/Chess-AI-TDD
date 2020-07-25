//
//  UIConstants.swift
//  Chess
//
//  Created by Adnan Zahid on 8/24/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import SceneKit

let kStartingFilePosition = 2
let kStartingRankPosition = 2

let kPieceXOffset = -11

let kPieceXRotation = Double.pi/2

let kPieceXScale = 0.67
let kPieceYScale = 0.67
let kPieceZScale = 0.67

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

let kAnimationDuration = 0.5

let kWhiteCameraXPosition = -5.5
let kWhiteCameraYPosition = 12.0
let kWhiteCameraZPosition = 5.0

let kBlackCameraXPosition = 3.5
let kBlackCameraYPosition = 12.0
let kBlackCameraZPosition = -7.0

let kWhiteCameraXRotation = 0.0
let kWhiteCameraYRotation = 0.0
let kWhiteCameraZRotation = 0.0

let kBlackCameraXRotation = 0.0
let kBlackCameraYRotation = 0.0
let kBlackCameraZRotation = Double.pi

let kLightXPosition = 0.0
let kLightYPosition = 10.0
let kLightZPosition = 10.0

let kCapturedPieceZDistance = 10.0

enum LiftPieceDirection: Float {
    case up   = 0.5
    case down = 0
}
