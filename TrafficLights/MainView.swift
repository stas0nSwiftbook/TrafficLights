//
//  ContentView.swift
//  TrafficLights
//
//  Created by Станислав Буйновский on 20.01.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct MainView: View {
    
    @State private var buttonTitle = "Start"
    
    @State private var redLightState = 0.4
    @State private var yellowLightState = 0.4
    @State private var greenLightState = 0.4
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.4
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightIsOff
            redLightState = lightIsOn
        case .yellow:
            currentLight = .green
            redLightState = lightIsOff
            yellowLightState = lightIsOn
        case .green:
            currentLight = .red
            greenLightState = lightIsOn
            yellowLightState = lightIsOff
        }
    }
}

extension MainView {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                CircleLightView(color: .red, opacity: redLightState)
                CircleLightView(color: .yellow, opacity: yellowLightState)
                CircleLightView(color: .green, opacity: greenLightState)
                
                Spacer()
                
                CustomButtonView(title: buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
