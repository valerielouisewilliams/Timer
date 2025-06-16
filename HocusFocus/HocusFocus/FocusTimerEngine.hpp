//
//  FocusTimerEngine.hpp
//  HocusFocus
//
//  Created by Valerie Williams on 6/14/25.
//

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
    void tick(); // Returns the time left in seconds
};

#endif /* FocusTimerEngine_hpp */
