//
//  MemoryGame.swift
//  Memorize
//
//  Created by Erva Hatun Tekeoğlu on 10.09.2021.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, creatCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // Add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = creatCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2 ))
            cards.append(Card(content: content, id: pairIndex*2+1 ))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
