//
//  TimerWrapper.h
//  LittleTimer
//
//  Created by Valerie Williams on 6/19/25.
//

#ifndef TimerWrapper_h
#define TimerWrapper_h
#import <Foundation/Foundation.h>

@interface TimerWrapper : NSObject

- (instancetype)init;
- (void)startWithDuration:(int)duration;
- (void)pause;
- (void)reset;
- (int)tick;

@end
#endif /* TimerWrapper_h */
