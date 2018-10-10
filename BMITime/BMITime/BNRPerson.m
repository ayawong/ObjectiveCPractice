//
//  BNRPerson.m
//  BMITime
//
//  Created by ayawong on 2018/8/4.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "BNRPerson.h"


@implementation BNRPerson

//- (float)heightInMeters { 
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h { 
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos { 
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w { 
//    _weightInKilos = w;
//}

- (float)BodyMassIndex { 
//   return _weightInKilos / (_heightInMeters*_heightInMeters);
    return [self weightInKilos] / ([self heightInMeters] * [self heightInMeters]);
}

@end
