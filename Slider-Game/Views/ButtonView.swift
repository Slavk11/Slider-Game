//
//  ButtonView.swift
//  Slider-Game
//
//  Created by Сазонов Станислав on 19.06.2023.
//

import SwiftUI

struct ButtonView: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action:action) {
            Text(text)
                .font(.system(size: 18))
                .foregroundColor(.blue)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Start", action: {})
    }
}
