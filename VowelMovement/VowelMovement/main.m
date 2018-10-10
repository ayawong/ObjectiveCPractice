//
//  main.m
//  VowelMovement
//
//  Created by ayawong on 2018/8/8.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock) (id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *originalStrings = @[@"Sauerkraut",@"Raygun",@"Big Nerd Ranch",@"Mississippi"];
        NSLog(@"origin strings : %@", originalStrings);
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u"];
        
//        // block start
//        void (^devowelized) (id, NSUInteger, BOOL *);
//        // or write in one line as below
//        // void (^devowelized) (id, NSUInteger, BOOL *) = ^(id string, NSUInteger i, BOOL *stop)
        
//        ArrayEnumerationBlock devowelized;
//        devowelized = ^(id string, NSUInteger i, BOOL *stop) {
//            // if there is a character as 'y', then stop block
//            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
//            if (yRange.location != NSNotFound) {
//                *stop = YES;
//                return;
//            }
//
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//            for (NSString *s in vowels) {
//                NSRange fullRange = NSMakeRange(0, [newString length]);
//                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
//            }
//            [devowelizedStrings addObject:newString];
//        };
        
//        [originalStrings enumerateObjectsUsingBlock:devowelized];
        
        // modify vowelized as anonmoynous block
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        }];
        NSLog(@"new string:%@", devowelizedStrings);
    }
    return 0;
}
