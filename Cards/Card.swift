//
//  Card.swift
//  Cards
//
//  Created by le on 02/08/2018.
//  Copyright © 2018 LeandroEstrada. All rights reserved.
//

import Foundation

struct Card{
    
    var ifFaceUp = false
    var isMatched = false
    var identifier: Int
    
    init(identifier : Int){
        self.identifier = identifier
    }
}
