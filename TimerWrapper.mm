//
//  TimerWrapper.mm
//  HocusFocus
//
//  Created by Valerie Williams on 6/19/25.
//

#import <Foundation/Foundation.h>
#import "TimerWrapper.h"
#include "FocusTimerEngine.hpp"

@implementation TimerWrapper {
    FocusTimerEngine engine;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        // set up engine here
    }
    return self;
}

- (void)startWithDuration:(int)duration {
    engine.start(duration);
}

- (void)pause {
    engine.pause();
}

- (void)reset {
    engine.reset();
}

- (int)tick {
    TimerStatus status = engine.tick();
    switch (status) {
        case TimerStatus::Ticked:
            return 0;
        case TimerStatus::Paused:
            return 1;
        case TimerStatus::Completed:
            return 2;
    }
}

@end
