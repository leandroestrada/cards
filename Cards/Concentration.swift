//
//  Concentration.swift
//  Cards
//
//  Created by le on 31/07/2018.
//  Copyright © 2018 LeandroEstrada. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int){
    
    }
    
    init(numberOfPairsOfCards: Int){
        for identifier in 0..<numberOfPairsOfCards{
            let card = Card(identifier: identifier)
            cards.append(card)
            cards.append(card)
        }
    }
}
