//
//  StringExtension.swift
//  Chess
//
//  Created by Adnan Zahid on 8/22/16.
//  Copyright © 2016 Chess. All rights reserved.
//

extension String {
    
    subscript (index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
    
    subscript (index: Int) -> String {
        return String(self[index] as Character)
    }
    
    var asciiArray: [Int] {
        return unicodeScalars.filter{$0.isASCII}.map{Int($0.value)}
    }
}

extension Character {
    
    var asciiValue: Int {
        return Int((String(self).unicodeScalars.filter{$0.isASCII}.first?.value)!)
    }
}
