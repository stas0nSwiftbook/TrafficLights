//
//  CircleLightView.swift
//  TrafficLights
//
//  Created by Станислав Буйновский on 20.01.2022.
//

import SwiftUI

struct CircleLightView: View {
    let color: Color
    var isOn = false
    
    private let screenWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: screenWidth / 3,
                   height: screenWidth / 3)
            .opacity(isOn ? 1.0 : 0.4)
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
    }
}

struct CircleLightView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLightView(color: .red)
    }
}
