//
//  CardView.swift
//  Concentration
//
//  Created by Joseph DeWeese on 11/22/25.
//

import SwiftUI

struct CardView: View {
    //MARK: PROPERTIES
   @State var isFaceUp = false
    
    
    var body: some View {
        ZStack(alignment: .center) {
            let base = RoundedRectangle(cornerRadius: 10)
            if isFaceUp {
                base.fill(Color.white)
                    .strokeBorder(lineWidth: 2)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)

            } else{
                base.fill()
            }
        }
        .foregroundStyle(.orange)
        .padding(4)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    CardView()
}

