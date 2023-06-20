//
//  SwiftUIView.swift
//  Slider-Game
//
//  Created by Сазонов Станислав on 20.06.2023.
//

import SwiftUI

func randomizeTargetValue(targetValue: inout Int, value: inout Int) {
    targetValue = Int.random(in: 0...100)
    value += 1
}

func checkResult(value: Int, targetValue: Int) -> Alert {
    let difference = abs(targetValue - value)
    let accuracy = 100 - difference
    return Alert(
        title: Text("Результат"),
        message: Text("Твой результат точен на \(accuracy)%"),
        dismissButton: .default(Text("OK"))
    )
}
