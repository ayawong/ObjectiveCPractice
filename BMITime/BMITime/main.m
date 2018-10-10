//
//  main.m
//  BMITime
//
//  Created by ayawong on 2018/8/4.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
/*
        // initial
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
//        [mikey setWeightInKilos:96];
//        [mikey setHeightInMeters:1.8];
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"Mikey is %.2f meters tall and %d kilograms", height, weight);
//        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);
        
        float bmi = [mikey BodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"Mikey has a BMI of %f, has worked with us for %.2f years.", bmi, years);
        */
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        // NSMultableDictionary
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            mikey.weightInKilos = 96+i;
            mikey.heightInMeters = 1.8 - 1/10.0;
            mikey.employeeID = i;
            [employees addObject:mikey];
            
            if (i == 0) {
                [executives setObject:mikey forKey:@"CEO"];
            }
            if (i == 1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop%d",i ];
            asset.label = currentLabel;
            asset.resaleValue = 350+i*17;
            
            NSUInteger randomIndex = random() % [employees count];
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            [randomEmployee addAssets:asset];
            
            [allAssets addObject:asset];
            
        }
        
        // sort 不用 alloc init
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[voa, eid]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownship of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        
        
        NSLog(@"executives : %@", executives);
        NSLog(@"CEO : %@", executives[@"CEO"]);
        executives = nil;
        
        // filter 不用 alloc init
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 700"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed : %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownship of one arrays");
        
        allAssets = nil;
        employees = nil;
        
    }
    return 0;
}
