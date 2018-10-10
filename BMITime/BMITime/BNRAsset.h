//
//  BNRAsset.h
//  BMITime
//
//  Created by ayawong on 2018/8/4.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject
@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end
