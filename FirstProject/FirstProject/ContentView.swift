//
//  ContentView.swift
//  FirstProject
//
//  Created by Ibrahim Hassan on 12/06/20.
//  Copyright © 2020 Swiftify. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: ViewModel
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView.init(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }.padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle.init(cornerRadius: 10).fill()
                RoundedRectangle.init(cornerRadius: 10).stroke(lineWidth: 3)
                RoundedRectangle.init(cornerRadius: 10).fill()
                Text(card.content)
            } else {
                RoundedRectangle.init(cornerRadius: 10).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(viewModel: ViewModel())
        }
    }
}


