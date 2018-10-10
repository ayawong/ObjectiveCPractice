//
//  BNRAsset.m
//  BMITime
//
//  Created by ayawong on 2018/8/4.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%u, assign to %@>", self.label, self.resaleValue, self.holder];
    } else {
                return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
