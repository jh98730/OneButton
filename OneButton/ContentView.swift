//
//  ContentView.swift
//  OneButton
//
//  Created by John Howard on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = " "
    @State private var imageString = "hand.thumbsup"
    
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            Button("Press Me") {
                let checkValue = "You are Awesome!"
                let greatValue = "You are Great!"
                if message == checkValue {
                    message = greatValue
                    imageString = "hand.thumbsup"
                } else {
                    message = checkValue
                    imageString = "sun.max.fill"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        
    }
}

#Preview {
    ContentView()
}
