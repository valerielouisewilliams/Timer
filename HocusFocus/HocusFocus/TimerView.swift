//
//  ContentView.swift
//  HocusFocus
//
//  Created by Valerie Williams on 6/14/25.
//

import SwiftUI

struct TimerView: View {
    
    @State var timeRemaining = 1500
    
    var body: some View {
        VStack {
            Text("Countdown: 0:00")
            HStack {
                // Pause button
                Button(action: PlaceholderFunction) {
                    Text("Pause")
                }
                
                // Reset button
                Button(action: PlaceholderFunction) {
                    Text("Reset")
                }
                
                // Start button
                Button(action: PlaceholderFunction) {
                    Text("Start")
                }
            }
        }
        .padding()
    }
    
    private func PlaceholderFunction() {
        print("Sup dude")
    }
}

#Preview {
    TimerView()
}
