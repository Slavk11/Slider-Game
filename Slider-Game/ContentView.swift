//
//  ContentView.swift
//  Slider-Game
//
//  Created by Сазонов Станислав on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State var value = 0
    @State var targetValue = Int.random(in: 0...100)
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            
            SliderView(value: $value, targetValue: $targetValue)
            
            ButtonView(text: "Проверь меня!") {
                showAlert.toggle()
            }
            .padding(.bottom, 10)
            .alert(isPresented: $showAlert) {
                checkResult(value: value, targetValue: targetValue)
            }
            
            ButtonView(text: "Начать заново") {
                randomizeTargetValue(targetValue: &targetValue, value: &value)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

