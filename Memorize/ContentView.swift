//
//  ContentView.swift
//  Memorize
//
//  Created by Erva Hatun Tekeoğlu on 30.08.2021.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]){
                    ForEach(viewModel.cards) { card in
                        CardView(card: card).aspectRatio(2/3,contentMode: .fit)
                    }
                }
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill()
                    .foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
    }
}
