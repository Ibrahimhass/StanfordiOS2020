//
//  ViewModel.swift
//  FirstProject
//
//  Created by Ibrahim Hassan on 12/06/20.
//  Copyright © 2020 Swiftify. All rights reserved.
//

import SwiftUI

class ViewModel: ObservableObject {
        
    @Published private(set) var model: Model<String> = ViewModel.createMemoryGame()
    
    static func createMemoryGame() -> Model<String> {
        let emojis = ["🦁", "🦊", "💼", "㊗️", "🆎"]
        let randomInt = Int.random(in: 2..<emojis.count)
        return Model<String>.init(numberOfPairOfCards: randomInt) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: Array<Model<String>.Card> {
        model.cards
    }
    
    // MARK:- Intenet(s)
    
    func choose(card: Model<String>.Card) {
        objectWillChange.send()
        model.choose(card: card)
    }
    
    
}
