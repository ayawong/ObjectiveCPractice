//
//  BNRLogger.m
//  Callbacks
//
//  Created by ayawong on 2018/8/7.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger
- (NSString *) lastTimeString {
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void) updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    //    [self setLastTime:now];
    
    [self willChangeValueForKey:@"lastTime"];
    _lastTime = now;
    [self didChangeValueForKey:@"lastTime"];
    
    NSLog(@"Just set time to %@", self.lastTimeString);
}

- (void) zoneChange:(NSNotification *)note {
    NSLog(@"The system time zone has changed!");
}

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"recived %lu bytes", [data length]);
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

- (void) connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
}

- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

// getter
//         keyPathsForValuesAffecting  + CapsFirstCharacterParameter
// setter will be
//         keyPathsForValuesAffecting + set + CapsFirstCharacterParameter
+ (NSSet *)keyPathsForValuesAffectingLastTimeString
{
    return [NSSet setWithObject:@"lastTime"];
}

@end
