//
//  Contents.m
//  Test
//
//  Created by tanbo on 2016/02/14.
//  Copyright © 2016年 tanbo. All rights reserved.
//

#import "Contents.h"

@implementation Contents

@synthesize testStr1 = _testStr1;

//------------------------------------
- (id) init
{
    self = [super init];
    if(self) {
        _testStr1 = [NSString stringWithFormat:@"test"];
    }
    return self;
}

//------------------------------------
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", _testStr1];
}
@end
