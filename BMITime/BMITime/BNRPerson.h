//
//  BNRPerson.h
//  BMITime
//
//  Created by ayawong on 2018/8/4.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;
//{
//    float _heightInMeters;
//    int _weightInKilos;
//}

//- (float) heightInMeters;
//- (void) setHeightInMeters:(float) h;
//- (int) weightInKilos;
//- (void) setWeightInKilos:(int) w;
- (float) BodyMassIndex;

@end
