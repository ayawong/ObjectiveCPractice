//
//  BNRLogger.h
//  Callbacks
//
//  Created by ayawong on 2018/8/7.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
    <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
- (NSString *) lastTimeString;
- (void) updateLastTime:(NSTimer *) t;

- (void) zoneChange:(NSNotification *)note;

// as NSURLConnection delecate target
- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
- (void) connectionDidFinishLoading:(NSURLConnection *)connection;
- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;

@end
