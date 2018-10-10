//
//  main.m
//  TimeAfterTime
//
//  Created by ayawong on 2018/8/2.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSDate *now = [[NSDate alloc] init];
//        NSDate *now = [NSDate date];
//        NSLog(@"This NSDate object lives at %p", now);
//        NSLog(@"The date is %@", now);
//
//        double seconds = [now timeIntervalSince1970];
//        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
//        Practce
//        NSHost *myMAC = [NSHost currentHost];
//        NSString *macName = [myMAC localizedName];
//        NSLog(@"My MAC name is %@", macName);
        
        // Calendar control
//        NSCalendar *cal = [NSCalendar currentCalendar];
//        NSLog(@"My Calendar is %@", [cal calendarIdentifier]);
//        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
//        NSLog(@"This is day %lu of month",day);
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:13];
        [comps setMonth:6];
        [comps setYear:1979];
        NSDate *myBirthdate = [[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian] dateFromComponents:comps];
        double secondsCount = [now timeIntervalSinceDate:myBirthdate];
        NSLog(@"It has been %f seconds", secondsCount);
        
        
    }
    return 0;
}
