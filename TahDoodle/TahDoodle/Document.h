//
//  Document.h
//  TahDoodle
//
//  Created by ayawong on 2018/8/16.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument
    <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;

@end

