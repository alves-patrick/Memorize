//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Patrick Alves on 02/11/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: MemoryGame<Any>)
        }
    }
}
