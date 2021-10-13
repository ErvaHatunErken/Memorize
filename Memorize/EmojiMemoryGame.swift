//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Erva Hatun Tekeoğlu on 10.09.2021.
//

import SwiftUI
//viewModel
class EmojiMemoryGame: ObservableObject {
    static var emojies = ["🚝","🚀","⛵️","🚊","🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐","🛻","🚚","🚛","🚜","🦽","🛵","🚘","🛺","🚔","🚖","⛴"]
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojies[pairIndex]
        }
    }
    
    //var objectWillChange: ObservableObjectPublisher
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
   
    //MARK -Intents
    
    func choose(_ card: MemoryGame<String>.Card) {
        //objectWillChange.send()
        model.choose(card)
    }
}
