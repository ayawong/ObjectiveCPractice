//
//  BNRObserver.m
//  Callbacks
//
//  Created by ayawong on 2018/8/28.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@",keyPath , object, oldValue, newValue);
}

@end
