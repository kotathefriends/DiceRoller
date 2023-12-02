//
//  ContentView.swift
//  DiceRoller
//
//  Created by KOTA TAKAHASHI on 2023/12/02.
//

import SwiftUI

struct ContentView: View {
    var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Button("Roll") {
                numberOfPips = Int.random(in: 1...6)
            }
        }
    }
}

#Preview {
    ContentView()
}
