//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by ayawong on 2018/8/26.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;
- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *) n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end
