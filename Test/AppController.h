//
//  AppController.h
//  Test
//
//  Created by tanbo on 2016/02/14.
//  Copyright © 2016年 tanbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface AppController : NSObject <NSTableViewDelegate>

@property (strong) NSMutableArray *testArray;
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSArrayController *arrCon;

- (NSIndexSet *)tableView:(NSTableView *)tableView selectionIndexesForProposedSelection:(NSIndexSet *)proposedSelectionIndexes;

- (IBAction) testInsert:(id)sender;
- (IBAction) testRemove:(id)sender;
@end
