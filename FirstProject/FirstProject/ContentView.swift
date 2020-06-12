//
//  ContentView.swift
//  FirstProject
//
//  Created by Ibrahim Hassan on 12/06/20.
//  Copyright © 2020 Swiftify. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack {
            ForEach(0 ..< 4) { index in
                if index % 2 == 0 {
                    CardView.init(isFaceUp: true)
                } else {
                    CardView.init()
                }
            }
        }.padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle.init(cornerRadius: 10).fill()
                RoundedRectangle.init(cornerRadius: 10).stroke(lineWidth: 3)
                RoundedRectangle.init(cornerRadius: 10).fill()
                Text("🎃")
            } else {
                RoundedRectangle.init(cornerRadius: 10).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
