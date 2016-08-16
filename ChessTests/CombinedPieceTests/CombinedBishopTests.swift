//
//  CombinedBishopTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class CombinedBishopTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    /////////////////////////////
    // WHITE BISHOP TEST CASES //
    /////////////////////////////
    
    func testMoveWhiteBishopFromA1ToH8() {
        
        kBishopValue >> A2
        kBishopValue >> B3
        kBishopValue >> C4
        kBishopValue >> D5
        kBishopValue >> E6
        kBishopValue >> F7
        kBishopValue >> G8
        
        kBishopValue >> B1
        kBishopValue >> C2
        kBishopValue >> D3
        kBishopValue >> E4
        kBishopValue >> F5
        kBishopValue >> G6
        kBishopValue >> H7
        
        kBishopValue > (A1 > H8)
    }
    
    func testMoveWhiteBishopFromH1ToA8() {
        
        kBishopValue >> H2
        kBishopValue >> G3
        kBishopValue >> F4
        kBishopValue >> E5
        kBishopValue >> D6
        kBishopValue >> C7
        kBishopValue >> B8
        
        kBishopValue >> G1
        kBishopValue >> F2
        kBishopValue >> E3
        kBishopValue >> D4
        kBishopValue >> C5
        kBishopValue >> B6
        kBishopValue >> A7
        
        kBishopValue > (H1 > A8)
    }
    
    func testMoveWhiteBishopFromD4ToE5ToF4() {
        
        kBishopValue >> A2
        kBishopValue >> B3
        kBishopValue >> C4
        kBishopValue >> D5
        kBishopValue >> E6
        kBishopValue >> F7
        kBishopValue >> G8
        
        kBishopValue >> B1
        kBishopValue >> C2
        kBishopValue >> D3
        kBishopValue >> E4
        kBishopValue >> F5
        kBishopValue >> G6
        kBishopValue >> H7
        
        (kBishopValue > (D4 > E5)) > F4
    }
    
    func testGetWhiteBishopOnD4() {
        
        kBishopValue ?? D4
    }
    
    func testPutWhiteBishopOnD4() {
        
        kBishopValue >> D4
    }
    
    /////////////////////////////
    // BLACK BISHOP TEST CASES //
    /////////////////////////////
    
    func testMoveBlackBishopValueFromA1ToH8() {
        
        kBishopValue >> A2
        kBishopValue >> B3
        kBishopValue >> C4
        kBishopValue >> D5
        kBishopValue >> E6
        kBishopValue >> F7
        kBishopValue >> G8
        
        kBishopValue >> B1
        kBishopValue >> C2
        kBishopValue >> D3
        kBishopValue >> E4
        kBishopValue >> F5
        kBishopValue >> G6
        kBishopValue >> H7
        
        kBishopValue > (A1 > H8)
    }
    
    func testMoveBlackBishopValueFromH1ToA8() {
        
        kBishopValue >> H2
        kBishopValue >> G3
        kBishopValue >> F4
        kBishopValue >> E5
        kBishopValue >> D6
        kBishopValue >> C7
        kBishopValue >> B8
        
        kBishopValue >> G1
        kBishopValue >> F2
        kBishopValue >> E3
        kBishopValue >> D4
        kBishopValue >> C5
        kBishopValue >> B6
        kBishopValue >> A7
        
        kBishopValue > (H1 > A8)
    }
    
    func testMoveBlackBishopValueFromD4ToE5ToF4() {
        
        kBishopValue >> A2
        kBishopValue >> B3
        kBishopValue >> C4
        kBishopValue >> D5
        kBishopValue >> E6
        kBishopValue >> F7
        kBishopValue >> G8
        
        kBishopValue >> B1
        kBishopValue >> C2
        kBishopValue >> D3
        kBishopValue >> E4
        kBishopValue >> F5
        kBishopValue >> G6
        kBishopValue >> H7
        
        (kBishopValue > (D4 > E5)) > F4
    }
}
