//
//  CardView.swift
//  Concentration
//
//  Created by Joseph DeWeese on 11/22/25.
//

import SwiftUI

struct CardView: View {
    //MARK: PROPERTIES
    @State var isFaceUp = true
    let content: String

    var body: some View {
        ZStack(alignment: .center) {
            let base = RoundedRectangle(cornerRadius: 10)
            Group {
                base.fill(Color.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.system(size: 60))
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
#Preview {
    CardView(isFaceUp: false, content: "👻")
}
