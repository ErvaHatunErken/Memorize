//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Erva Hatun Tekeoğlu on 30.08.2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
