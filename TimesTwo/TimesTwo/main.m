//
//  main.m
//  TimesTwo
//
//  Created by ayawong on 2018/8/4.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24*60*60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24*60*60];
        // create 後就不能修改的 array
//        NSArray *dateList = @[now, tomorrow, yesterday];
        // create 後還可以修改的 array
        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
//        NSLog(@"Ths first date is %@",dateList[0]);
//        NSLog(@"Ths second date is %@",dateList[1]);
//        NSLog(@"There are %lu dates", [dateList count]);
//        for (int i = 0; i < [dateList count]; i++) {
//            NSDate *d = dateList[i];
//            NSLog(@"Here is a date %@", d);
//        }
        
        // 遍歷方式
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date %@", d);
        }
    }
    return 0;
}
