//
//  CircleLightView.swift
//  TrafficLights
//
//  Created by Станислав Буйновский on 20.01.2022.
//

import SwiftUI

struct CircleLightView: View {
    let color: Color
    let opacity: Double
    
    private let screenWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        Circle()
            .frame(width: screenWidth / 3,
                   height: screenWidth / 3)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
    }
}

struct CircleLightView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLightView(color: .red, opacity: 1.0)
    }
}
