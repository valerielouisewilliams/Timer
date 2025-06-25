//
//  TimerViewModel.swift
//  HocusFocus
//
//  Created by Valerie Williams on 6/16/25.
//

import Foundation

class TimerViewModel : ObservableObject {
    @Published var timeRemaining: Int = 1500
    private var timer: Timer?
    let wrapper = TimerWrapper()
    
    func start() {
        wrapper!.start(withDuration: Int32(timeRemaining))
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {_ in 
            let status = self.wrapper?.tick()
            
            if status == 0 {
                self.timeRemaining -= 1 // timer is still ticking
            } else if status == 2 { // our timer is up
                self.timer?.invalidate() // stop the timer
                self.timer = nil
            }
        }
    }
    
    func pause() {
        wrapper!.pause();
        self.timer?.invalidate()
    }
    
    func reset() {
        wrapper!.reset();
        self.timer?.invalidate()
        timeRemaining = 1500
    }
}
