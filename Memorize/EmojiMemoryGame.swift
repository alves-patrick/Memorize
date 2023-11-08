//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Patrick Alves on 04/11/23.
//

import SwiftUI

class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards:)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
