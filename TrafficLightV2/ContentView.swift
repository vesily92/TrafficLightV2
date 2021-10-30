//
//  ContentView.swift
//  TrafficLightV2
//
//  Created by Василий Пронин on 27.10.2021.
//

import SwiftUI

enum LightColor {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var label = "START"
    @State private var lightColor = LightColor.red
    
    @State private var redAlpha = 0.3
    @State private var yellowAlpha = 0.3
    @State private var greenAlpha = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                LightView(opacity: redAlpha, color: .red)
                LightView(opacity: yellowAlpha, color: .yellow)
                LightView(opacity: greenAlpha, color: .green)
                Spacer()
                ButtonView(action: buttonTapped, label: label)
            }
        }
    }
    
    private func buttonTapped() {
        if label == "START" { label = "NEXT" }
        
        switch lightColor {
        case .red:
            redAlpha = 1
            greenAlpha = 0.3
            lightColor = .yellow
        case .yellow:
            redAlpha = 0.3
            yellowAlpha = 1
            lightColor = .green
        case .green:
            yellowAlpha = 0.3
            greenAlpha = 1
            lightColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
