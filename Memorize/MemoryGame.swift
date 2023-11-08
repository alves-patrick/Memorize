//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Patrick Alves on 04/11/23.
//

import Foundation
import UIKit

struct MemoryGame<CardContent> {

    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int) {
        cards = Array<Card>()
    }
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
