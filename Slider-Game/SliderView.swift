//
//  SliderView.swift
//  Slider-Game
//
//  Created by Сазонов Станислав on 19.06.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Int
    @Binding var targetValue: Int
  
    var body: some View {
           UISliderRepresentation(value: $value, minimumValue: 0, maximumValue: 100)
               .frame(width: 300, height: 50)
               //.opacity(computeScore())
       }
       
       private func computeScore() -> Double {
           let difference = abs(targetValue - value)
           return Double(100 - difference) / 100.0
       }
   }



struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(20), targetValue: .constant(10))
    }
}


