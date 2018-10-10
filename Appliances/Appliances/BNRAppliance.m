//
//  BNRAppliance.m
//  Appliances
//
//  Created by ayawong on 2018/8/26.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)init {
    return [self initWithProductName:@"Unknown"];
}

- (instancetype)initWithProductName:(NSString *)pn {
    
    // NSObject init method
    self = [super init];
    
    // check if return nil or not
    if (self) {
        // assign value to productName
        _productName = [pn copy];
        // assign value to voltage
        _voltage = 120;
        
        // another way to set properties
//        [self setProductName:pn];
//        [self setVoltage:120];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

- (void)setVoltage:(int)x {
    NSLog(@"setting voltage to %d", x);
    _voltage = x;
}

@end
