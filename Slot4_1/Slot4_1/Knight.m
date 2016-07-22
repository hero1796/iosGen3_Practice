//
//  Knight.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "Knight.h"

@implementation Knight

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_TYPE_Knight;
    }
    return self;
}

- (BOOL)isMoveValid:(NSMutableArray *)arrChess
{
    NSLog(@"Knight Move valid");
    return YES;
}

@end
