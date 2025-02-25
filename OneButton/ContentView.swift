//
//  ContentView.swift
//  OneButton
//
//  Created by John Howard on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = " "
    @State var imageString = "hand.thumbsup"
    
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
                if message == "You are Awesome!" {
                    message = "You are Great!"
                    imageString = "hand.thumbsup"
                } else {
                    message = "You are Awesome!"
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
