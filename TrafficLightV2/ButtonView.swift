//
//  ButtonView.swift
//  TrafficLightV2
//
//  Created by Василий Пронин on 30.10.2021.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let label: String
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .bold()
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 180, height: 50)
        .background(Color.blue)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
        .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, label: "START")
    }
}
