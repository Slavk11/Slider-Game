//
//  SliderView.swift
//  Slider-Game
//
//  Created by Сазонов Станислав on 19.06.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Int
    
    var body: some View {
        UISliderRepresentation(value: $value)
            .frame(width: 300, height: 50)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(1))
    }
}
