//
//  main.m
//  Constants
//
//  Created by ayawong on 2018/8/6.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger",MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currecy = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currecy);
    }
    return 0;
}
