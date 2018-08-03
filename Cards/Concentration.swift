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
        if cards[index].isFaceUp{
            cards[index].isFaceUp = false}
        else{
            cards[index].isFaceUp = true
        }
    
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()
            cards += [card, card]
        }
        
    }
}
