//
//  Document.m
//  TahDoodle
//
//  Created by ayawong on 2018/8/16.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#import "Document.h"

@interface Document ()

@end

@implementation Document

#pragma mark - NSDocument Overrides

- (instancetype)init {
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

+ (BOOL)autosavesInPlace {
    return YES;
}


- (NSString *)windowNibName {
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}


- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:self.tasks format:NSPropertyListXMLFormat_v1_0 options:0 error:outError];
    
    return data;
}


- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    self.tasks = [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListXMLFormat_v1_0 format:NULL error:outError];
    
    return (self.tasks != nil);
}

#pragma mark - Actions
- (void)addTask:(id)sender {
//    NSLog(@"Add task button clicked!");
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    
    [self.tasks addObject:@"New Item"];
    
    [self.taskTable reloadData];
    
    //-updateChangeCount:方法通知应用“文档”是否有尚未保存的修改。
    //NSChangeDone会将文档标记为“未保存”
    [self updateChangeCount:NSChangeDone];
}

#pragma mark - DataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [self.tasks count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    return [self.tasks objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    //当用户修改表格视图中的任务数据时，更新todoItems数组
    [self.tasks replaceObjectAtIndex:row withObject:object];
    //将文档标记为有未保存的修改
    [self updateChangeCount:NSChangeDone];
}



@end
