//
//  ContentView.swift
//  Memorize
//
//  Created by Patrick Alves on 02/11/23.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    let emojis = ["👻","🎃","🕷️","😈","💀","🕸️","🧙🏼‍♂️","🙀","👹","😱","☠️","🍭"]
    @State var cardCount: Int = 4
    var body: some View {
       
            ScrollView {
                cards
            }
            }
   
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]){
            ForEach(emojis.indices, id: \.self) {index in CardView(content: emojis[index])}
                .aspectRatio(2/3, contentMode: .fit)
        }
        .foregroundColor(.orange)
        .padding()
    }
   
}


struct CardView: View {
    let content: String
  @State  var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
            
        }
            
        
        
        
    }
    
}
