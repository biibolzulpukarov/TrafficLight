//
//  ContentView.swift
//  TrafficLight
//
//  Created by Бийбол Зулпукаров on 7/11/23.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func changeNextColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
        case .yellow:
            currentLight = .green
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
        case .green:
            currentLight = .red
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
        }
        
    }
    
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                ColorCircleView(color: .red, opacity: redLightOpacity)
                ColorCircleView(color: .yellow, opacity: yellowLightOpacity)
                ColorCircleView(color: .green, opacity: greenLightOpacity)
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    
                    changeNextColor()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
