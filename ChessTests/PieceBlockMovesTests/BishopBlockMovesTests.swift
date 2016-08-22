//
//  BishopBlockMovesTests.swift
//  Chess
//
//  Created by Adnan Zahid on 8/9/16.
//  Copyright © 2016 Chess. All rights reserved.
//

import XCTest

class BishopBlockMovesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        Board.sharedInstance.setupEmptyBoard()
    }
    
    ///////////
    // WHITE //
    ///////////
    
    func testBlockWhiteBishopFromA1ToH8() {
        
        kBishopValue >> H8
        
        kBishopValue !== (A1 > H8)
    }
    
    func testBlockWhiteBishopFromH1ToA8() {
        
        kBishopValue >> D5
        
        kBishopValue !== (H1 > A8)
    }
    
    func testBlockWhiteBishopFromD4ToE5ToF4() {
        
        kBishopValue >> E5
        kBishopValue >> F4
        
        (kBishopValue !== (D4 > E5)) !== F4
    }
    
    ///////////
    // BLACK //
    ///////////
    
    func testBlockBlackBishopFromA1ToH8() {
        
        -kBishopValue >> D4
        
        -kBishopValue !== (A1 > H8)
    }
    
    func testBlockBlackBishopFromH1ToA8() {
        
        -kBishopValue >> D5
        
        -kBishopValue !== (H1 > A8)
    }
    
    func testBlockBlackBishopFromD4ToE5ToF4() {
        
        -kBishopValue >> E5
        -kBishopValue >> F4
        
        (-kBishopValue !== (D4 > E5)) !== F4
    }
}
