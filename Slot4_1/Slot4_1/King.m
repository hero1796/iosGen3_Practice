//
//  King.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "King.h"

@implementation King

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_TYPE_King;
    }
    return self;
}

- (BOOL)isMoveValid:(NSMutableArray *)arrChess
{
    NSLog(@"King Move valid");
    return YES;
}

@end
