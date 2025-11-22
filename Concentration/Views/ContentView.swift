//
//  ContentView.swift
//  Concentration
//
//  Created by Joseph DeWeese on 11/21/25.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["🐶", "🐱", "🐭", "🐹", "🐮", "🐷", "🐻", "🐨"]
   
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                
            }
        }
        .foregroundStyle(.orange)
        .padding(10)
    }
}

#Preview {
    ContentView()
}
