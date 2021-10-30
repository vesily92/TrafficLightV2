//
//  LightView.swift
//  TrafficLightV2
//
//  Created by Василий Пронин on 27.10.2021.
//

import SwiftUI

struct LightView: View {
    let opacity: Double
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(opacity: 1, color: .red)
    }
}
