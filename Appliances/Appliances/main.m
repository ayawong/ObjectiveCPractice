//
//  main.m
//  Appliances
//
//  Created by ayawong on 2018/8/26.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@",a);
//        [a setProductName:@"Washing Machine"];
        // rewrite as key-value coding
        // setValue:key will auto to find a setter method named as setProductName
        [a setValue:@"Washing Machine" forKey:@"productName"];
     
//        [a setVoltage:240];
        // rewrite as key-value coding
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];

//        NSInteger newVol = 240;
//        [a setValue:@(newVol) forKey:@"voltage"];
        
//        [a setValue:@(240) forKey:@"voltage"];

        NSLog(@"a is %@", a);
        
        // valueforkey: will auto to find a getter method named as productName
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
    }
    return 0;
}
