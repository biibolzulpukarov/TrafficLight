//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by Бийбол Зулпукаров on 17/11/23.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 130)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1)
}
