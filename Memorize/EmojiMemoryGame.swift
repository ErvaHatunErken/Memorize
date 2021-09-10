//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Erva Hatun Tekeoğlu on 10.09.2021.
//

import SwiftUI

class EmojiMemoryGame {
    static var emojies = ["🚝","🚀","⛵️","🚊","🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐","🛻","🚚","🚛","🚜","🦽","🛵","🚘","🛺","🚔","🚖","⛴"]
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojies[pairIndex]
        }
    }
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
   
}
