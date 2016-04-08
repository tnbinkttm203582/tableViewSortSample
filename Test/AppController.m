//
//  AppController.m
//  Test
//
//  Created by tanbo on 2016/02/14.
//  Copyright © 2016年 tanbo. All rights reserved.
//

#import "AppController.h"
#import "Contents.h"

@implementation AppController

@synthesize testArray = _testArray;
@synthesize tableView = _tableView;
@synthesize arrCon = _arrCon;

//----------------------------------------------
- (id)init {

    self = [super init];
    if(self) {
        _testArray = [[NSMutableArray alloc] initWithCapacity:15];
    }

    return self;
}

//---------------------------------------------------
- (NSIndexSet *)tableView:(NSTableView *)tableView selectionIndexesForProposedSelection:(NSIndexSet *)proposedSelectionIndexes
{
    return proposedSelectionIndexes;
}

//---------------------------------------------------
- (IBAction) testInsert:(id)sender
{
    NSLog(@"insert");
    
    [_arrCon insert:nil]; //追加
}

//---------------------------------------------------
- (IBAction) testRemove:(id)sender
{
    NSLog(@"remove");
    
    //GUI上で選択中のオブジェクト一覧を取得
    NSArray *selectedObjs = [_arrCon selectedObjects];
    for (Contents *tmp in selectedObjs) {

        NSLog(@" selectedObj: %@", [tmp testStr1]);
        // ここに処理を追記
    }
    
    //GUI上で選択中のインデックス一覧を取得
    NSIndexSet *selectedRows = [_arrCon selectionIndexes];
    NSUInteger rowIndex = selectedRows.firstIndex;
    while (rowIndex != NSNotFound) {
        
        NSLog(@" selectedRow: %lu", rowIndex);
        // ここに処理を追記
        
        rowIndex = [selectedRows indexGreaterThanIndex:rowIndex];
    }
    
    [_arrCon remove:nil];
}

@end
