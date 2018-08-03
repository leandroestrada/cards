//
//  ViewController.swift
//  Cards
//
//  Created by le on 29/07/2018.
//  Copyright © 2018 LeandroEstrada. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    
    
    
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
}
    }
    @IBOutlet var cardButtons: [UIButton]!
    
   // var emojiChoices: Array<String> = ["👻","🍔","👻","🍔"]
    
    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }else{
            print("Chosen card was not in cardButtons")
        }
    }
    
    func updateViewFromModel(){
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp{
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            }
            else{
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) :  #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            }
        }
    }
    
    var emojiChoices = ["🧟‍♂️","🧙🏾‍♂️", "👹", "🦇"]
    
    func emoji(for card: Card)-> String{
            return "?"

    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    
    
}

