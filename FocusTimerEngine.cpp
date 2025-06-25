//
//  FocusTimerEngine.cpp
//  LittleTimer
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

bool FocusTimerEngine::isDone() {
    return timeRemaining == 0;
}

TimerStatus FocusTimerEngine::tick() {
    if (!isRunning) { return TimerStatus::Paused; }
    if (timeRemaining == 0) {
        isRunning = false;
        return TimerStatus::Completed;
    }

    // if not paused or completed, continue the tick
    timeRemaining -= 1;
    return TimerStatus::Ticked;
}


