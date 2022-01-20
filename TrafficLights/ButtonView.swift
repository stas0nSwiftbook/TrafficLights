//
//  ButtonView.swift
//  TrafficLights
//
//  Created by Станислав Буйновский on 20.01.2022.
//

import SwiftUI

struct ButtonView: View {
    let buttonTitle: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonTitle)
                .padding(.top, 20)
                .padding(.bottom, 20)
                .padding(.leading, 40)
                .padding(.trailing, 40)
                .background(.blue)
                .foregroundColor(.white)
                .font(.title)
                .textCase(.uppercase)
                .cornerRadius(20.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "Start", action: {
            
        })
    }
}
