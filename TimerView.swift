//
//  TimerView.swift
//  LittleTimer
//
//  Created by Valerie Williams on 6/25/25.
//

import Foundation
import SwiftUI

struct TimerView: View {
    
    @ObservedObject var viewModel = TimerViewModel()
    
    var body: some View {
        VStack {
            Text("Countdown: \(viewModel.timeRemaining / 60):\(String(format: "%02d", viewModel.timeRemaining % 60))")
            HStack {
                // Start button
                Button(action: startTimer) {
                    Text("Start")
                }
                // Pause button
                Button(action: pauseTimer) {
                    Text("Pause")
                }
                // Reset button
                Button(action: resetTimer) {
                    Text("Reset")
                }
            }
        }
        .padding()
    }
    
    private func PlaceholderFunction() {
        print("Sup dude")
    }
    
    private func startTimer() {
        viewModel.start()
    }
    
    private func pauseTimer() {
        viewModel.pause()
    }
    
    private func resetTimer() {
        viewModel.reset()
    }
}

//#Preview {
//    TimerView()
//}
