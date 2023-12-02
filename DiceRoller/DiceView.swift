//
//  DiceView.swift
//  DiceRoller
//
//  Created by KOTA TAKAHASHI on 2023/12/02.
//

import SwiftUI

struct DiceView: View {
   @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .aspectRatio(1, contentMode: .fit)
            .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
