//
//  FocusTimerEngine.hpp
//  LittleTimer
//
//  Created by Valerie Williams on 6/14/25.
//

enum class TimerStatus {
    Ticked,
    Completed,
    Paused
};


#ifndef FocusTimerEngine_hpp
#define FocusTimerEngine_hpp

#include <stdio.h>

class FocusTimerEngine {
private:
    int durationSeconds;
    int timeRemaining;
    bool isRunning;
    
public:
    FocusTimerEngine();
    void start(int duration);
    void pause();
    void reset();
    bool isDone();
    TimerStatus tick(); // Returns the time left in seconds
};

#endif /* FocusTimerEngine_hpp */

