//
//  Card.swift
//  Cards
//
//  Created by le on 02/08/2018.
//  Copyright © 2018 LeandroEstrada. All rights reserved.
//

import Foundation

struct Card{
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
        
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
