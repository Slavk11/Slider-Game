//
//  SwiftUIView.swift
//  Slider-Game
//
//  Created by Сазонов Станислав on 19.06.2023.
//

import SwiftUI

struct UISliderRepresentation: UIViewRepresentable {
    @Binding var value: Int
    var minimumValue: Int
    var maximumValue: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.sizeToFit()
        slider.minimumValue = Float(minimumValue)
        slider.maximumValue = Float(maximumValue)
        slider.value = Float(value)
        slider.addTarget(context.coordinator, action: #selector(Coordinator.sliderValueChanged(_:)), for: .valueChanged)
        slider.thumbTintColor = UIColor.red
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UISliderRepresentation(value: .constant(1), minimumValue: 1, maximumValue: 100)
    }
}

extension UISliderRepresentation {
    final class Coordinator: NSObject {
        @Binding var value: Int
        
        init(value: Binding<Int>) {
            self._value = value
        }
        
        @objc func sliderValueChanged(_ sender: UISlider) {
            self.value = Int(sender.value)
        }
        
    }
}
