//
//  ContentView.swift
//  TrafficLightV2
//
//  Created by Василий Пронин on 27.10.2021.
//

import SwiftUI

enum LightColor {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonLabel = "START"
    @State private var lightColor = LightColor.red
    
    @State private var redState = 0.3
    @State private var yellowState = 0.3
    @State private var greenState = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
                LightView(opacity: redState, color: .red)
                LightView(opacity: yellowState, color: .yellow)
                LightView(opacity: greenState, color: .green)
                Spacer()
                ButtonView(label: buttonLabel) {
                    if buttonLabel == "START" { buttonLabel = "NEXT" }
                    switchLight()
                }
            }
        }
    }
    
    private func switchLight() {
        
        let turnedOn = 1.0
        let turnedOff = 0.3
        
        switch lightColor {
        case .red:
            redState = turnedOn
            greenState = turnedOff
            lightColor = .yellow
        case .yellow:
            redState = turnedOff
            yellowState = turnedOn
            lightColor = .green
        case .green:
            yellowState = turnedOff
            greenState = turnedOn
            lightColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
