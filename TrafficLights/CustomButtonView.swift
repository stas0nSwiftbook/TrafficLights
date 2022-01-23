//
//  ButtonView.swift
//  TrafficLights
//
//  Created by Станислав Буйновский on 20.01.2022.
//

import SwiftUI

struct CustomButtonView: View {
    let title: String
    let action: () -> Void
    
    private let screenWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.title)
        }
        .frame(width: screenWidth / 2, height: screenWidth / 8)
        .background(.blue)
        .textCase(.uppercase)
        .cornerRadius(20.0)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 2)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(title: "Start", action: {})
    }
}
