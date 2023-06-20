//
//  ContentView.swift
//  Slider-Game
//
//  Created by Сазонов Станислав on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State var value = 1
    @State var targetValue = Int.random(in: 0...100)
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            SliderView(value: $value, targetValue: $targetValue)
            
            ButtonView(text: "Проверь меня!", action: {})
                .padding(.bottom, 10)
            ButtonView(text: "Начать заново", action: {})
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

