//
//  ContentView.swift
//  Concentration
//
//  Created by Joseph DeWeese on 11/21/25.
//

import SwiftUI

struct ContentView: View {
    //MARK:  PROPERTIES
    let emojis: [String] = [
        "🐶", "🐱", "🐭", "🐹", "🐮", "🐷", "🐻", "🐨", "🐼", "🦋", "🦌", "🦑", "🦐", "🦀",
        "🦎", "🦂", "🦠", "🦈", "🦁", "🐯", "🐘", "🐗", "🐖", "🐔", "🐤", "🐣", "🐏", "🐑",
    ]
    @State var cardCount: Int = 28

    var body: some View {
        //MARK: BODY
        VStack {
            ScrollView {
                Cards
            }
            Spacer()
            cardCountAdjuster
        }
        .padding(3)
       
    }

    //MARK: CARDS VIEW
    var Cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
            
        }
        .foregroundStyle(.orange)
    }
    //MARK: CARDCOUNT ADJUSTER VIEW
    var cardCountAdjuster: some View {
        HStack {
            cardRemover
            Spacer()
            CardAdder
        }
        .font(Font.largeTitle.bold())
        .padding(.horizontal, 75)
    }
    //MARK: CARD ADJUST FUNC
    func cardCounterAdjuster(by offset: Int, symbol: String) -> some View {
        Button(
            action: {
                cardCount += offset
            },
            label: {
                Image(systemName: symbol)
            }
        )
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    //MARK: CARD REMOVER VIEW
    var cardRemover: some View {
        cardCounterAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
    }
    //MARK: CARD ADDER VIEW
    var CardAdder: some View {
        cardCounterAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
    }

}
#Preview {
    ContentView()
}
