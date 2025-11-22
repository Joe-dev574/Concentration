//
//  CardView.swift
//  Concentration
//
//  Created by Joseph DeWeese on 11/22/25.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(lineWidth: 2)
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)

            } else{
                RoundedRectangle(cornerRadius: 10)
            }
        })
        .foregroundStyle(.orange)
        .padding(4)

    }
}

#Preview {
    CardView()
}

