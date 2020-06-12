//
//  Model.swift
//  FirstProject
//
//  Created by Ibrahim Hassan on 12/06/20.
//  Copyright © 2020 Swiftify. All rights reserved.
//

struct Model<CardContent> {
    var cards: [Card]
    
    mutating func choose(card: Card) {
        if let index = cards.lastIndex(where: { $0.id == card.id }) {
            cards[index].isFaceUp = !cards[index].isFaceUp
        }
    }
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0 ..< numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: (pairIndex * 2) + 1, content: content))
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp = true
        var isMatched = false
        var content: CardContent
    }
    
}




//class Class {
//
//    var test: Array<Subclass>?
//
//    class Subclass {
//
//    }
//
//}
//
//
//class Class<CardContent> {
//
//    var listData: [CardContent]?
//
//}
//
//class SubclassContent<CardContent> {
//
//    var content: CardContent?
//
//}

// THE LONG WAY
//struct MemoryGame<CardContent> {
//    var cards: Array<Card<CardContent>>?
//
//    func choose(card: Card<CardContent>) {
//        print ("Card chosen \(card)")
//    }
//}
//
//struct Card<CardContent> {
//    var isFaceUp: Bool
//    var isMatched: Bool
//    var content: CardContent
//}

// Using Classes
//class Class<CardContent> {
//    var listData: [CardContent]?
//}
//
//class SubclassContent<CardContent> {
//    var content: CardContent?
//}

