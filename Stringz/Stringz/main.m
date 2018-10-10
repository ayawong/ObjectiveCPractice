//
//  main.m
//  Stringz
//
//  Created by ayawong on 2018/8/7.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // save file
//        NSMutableString *str = [[NSMutableString alloc] init];
//        for (int i = 0; i < 10 ; i++) {
//            [str appendString:@"Aaron is cool!\n"];
//        }
//
//        NSError *error;
//        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
//        [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
//        if (success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else {
//            NSLog(@"writing /tmp/cool.txt failed :%@", [error localizedDescription]);
//        }
        
        // read file
//        NSError *error;
//        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"  encoding:NSASCIIStringEncoding error:&error];
//
//        if (!str) {
//            NSLog(@"read failed  :%@", [error localizedDescription]);
//        } else {
//            NSLog(@"resolv.conf looks like this :%@", str);
//        }
        NSURL *url = [NSURL URLWithString:@"https://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        if (!data) {
            NSLog(@"fetch failed :%@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes",(unsigned long) [data length]);
        BOOL written = [data writeToFile:@"/tmp/google.png" options:0 error:&error];
            
        if (!written) {
            NSLog(@"write failed :%@", [error localizedDescription]);
            return 1;
        }
    
        NSLog(@"Success!");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", (unsigned long) [readData length]);
    }
    return 0;
}
