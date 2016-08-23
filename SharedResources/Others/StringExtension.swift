//
//  StringExtension.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    var asciiArray: [Int] {
        return unicodeScalars.filter{$0.isASCII()}.map{Int($0.value)}
    }
}

extension Character {
    var asciiValue: Int {
        return Int((String(self).unicodeScalars.filter{$0.isASCII()}.first?.value)!)
    }
}