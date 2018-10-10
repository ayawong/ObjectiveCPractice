//
//  BNREmployee.m
//  BMITime
//
//  Created by ayawong on 2018/8/4.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"
@interface BNREmployee () {
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end


@implementation BNREmployee

- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (double)yearsOfEmployment {
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs;
    } else {
        return 0;
    }
}

- (float)BodyMassIndex {
//    return 19;
    return [super BodyMassIndex]*0.9;
}

- (NSString *)description {
//    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocation %@", self);
}

- (void)addAssets:(BNRAsset *)a {
    if (!_assets) {
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets {
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}
@end
