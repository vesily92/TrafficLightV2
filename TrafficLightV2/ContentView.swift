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
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
                LightView(opacity: lightColor == .red ? 1 : 0.3, color: .red)
                LightView(opacity: lightColor == .yellow ? 1 : 0.3, color: .yellow)
                LightView(opacity: lightColor == .green ? 1 : 0.3, color: .green)
                Spacer()
                ButtonView(label: buttonLabel) {
                    if buttonLabel == "START" { buttonLabel = "NEXT" }
                    switchLight()
                }
            }
        }
    }
    
    private func switchLight() {
        
        switch lightColor {
        case .red: lightColor = .yellow
        case .yellow: lightColor = .green
        case .green: lightColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
