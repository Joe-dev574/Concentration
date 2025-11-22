//
//  ContentView.swift
//  Concentration
//
//  Created by Joseph DeWeese on 11/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding(10)
    }
}

#Preview {
    ContentView()
}
