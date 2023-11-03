//
//  ContentView.swift
//  Memorize
//
//  Created by Patrick Alves on 02/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
    
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
  @State  var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            
        }
            
        
        
        
    }
    
}
