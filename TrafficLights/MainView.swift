//
//  ContentView.swift
//  TrafficLights
//
//  Created by Станислав Буйновский on 20.01.2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var redLight = CircleLightView(color: .red)
    @State private var yellowLight = CircleLightView(color: .yellow)
    @State private var greenLight = CircleLightView(color: .green)
    @State private var buttonTitle = "Start"
    
    private let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                redLight
                yellowLight
                greenLight
                Spacer()
                button
            }
            .padding(screenHeight / 10)
        }
        .ignoresSafeArea()
    }
    
    var button: some View {
        CustomButtonView(buttonTitle: buttonTitle) {
            buttonTitle = "Next"
            if redLight.isOn {
                redLight.isOn = false
                yellowLight.isOn = true
            } else if yellowLight.isOn {
                yellowLight.isOn = false
                greenLight.isOn = true
            } else {
                greenLight.isOn = false
                redLight.isOn = true
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
