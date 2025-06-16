//
//  FocusTimerEngine.cpp
//  HocusFocus
//
//  Created by Valerie Williams on 6/14/25.
//

#include "FocusTimerEngine.hpp"

FocusTimerEngine::FocusTimerEngine() {
    durationSeconds = 0;
    timeRemaining = 0;
    isRunning = false;
}

void FocusTimerEngine::start(int duration) {
    durationSeconds = duration;
    timeRemaining = duration;
    isRunning = true;
}

void FocusTimerEngine::pause() {
    isRunning = false;
}

void FocusTimerEngine::reset() {
    durationSeconds = 0;
    timeRemaining = 0;
    isRunning = false;
}

void FocusTimerEngine::tick() {
    if (!isRunning) return; // don't update
    timeRemaining -= 1;
}


